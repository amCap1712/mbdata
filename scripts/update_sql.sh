#!/bin/sh

cd $(dirname $0)/../mbdata

rm -rf sql

rm -rf /tmp/mbserver-clone
mkdir /tmp/mbserver-clone

curl -L -o /tmp/mbserver-clone/schema-change-2022-q2.tar.gz https://github.com/metabrainz/musicbrainz-server/archive/refs/heads/schema-change-2022-q2.tar.gz
tar -x -f /tmp/mbserver-clone/schema-change-2022-q2.tar.gz --strip-components=2 --wildcards 'musicbrainz-server-schema-change-2022-q2/admin/sql/*'
rm -rf /tmp/mbserver-clone

echo '\set ON_ERROR_STOP 1' >sql/CreateCollateIndexes.sql
echo 'BEGIN;' >>sql/CreateCollateIndexes.sql
grep _collate sql/CreateIndexes.sql >> sql/CreateCollateIndexes.sql
echo 'COMMIT;' >>sql/CreateCollateIndexes.sql

echo '\set ON_ERROR_STOP 1' >sql/DropCollateIndexes.sql
grep _collate sql/DropIndexes.sql >> sql/DropCollateIndexes.sql

mv sql/CreateIndexes.sql sql/CreateIndexes.sql.remove
grep -v _collate sql/CreateIndexes.sql.remove >> sql/CreateIndexes.sql
rm sql/CreateIndexes.sql.remove

mv sql/DropIndexes.sql sql/DropIndexes.sql.remove
grep -v _collate sql/DropIndexes.sql.remove >> sql/DropIndexes.sql
rm sql/DropIndexes.sql.remove
