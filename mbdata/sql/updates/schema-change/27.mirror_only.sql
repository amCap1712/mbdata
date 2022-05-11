-- Generated by CompileSchemaScripts.pl from:
-- 20220302-mbs-12225-mirror_only.sql
\set ON_ERROR_STOP 1
BEGIN;
SET search_path = musicbrainz, public;
SET LOCAL statement_timeout = 0;
--------------------------------------------------------------------------------
SELECT '20220302-mbs-12225-mirror_only.sql';


ALTER TRIGGER apply_artist_release_group_pending_updates_slave ON release RENAME TO apply_artist_release_group_pending_updates_mirror;
ALTER TRIGGER apply_artist_release_group_pending_updates_slave ON release_group RENAME TO apply_artist_release_group_pending_updates_mirror;
ALTER TRIGGER apply_artist_release_group_pending_updates_slave ON release_group_meta RENAME TO apply_artist_release_group_pending_updates_mirror;
ALTER TRIGGER apply_artist_release_group_pending_updates_slave ON release_group_secondary_type_join RENAME TO apply_artist_release_group_pending_updates_mirror;
ALTER TRIGGER apply_artist_release_group_pending_updates_slave ON track RENAME TO apply_artist_release_group_pending_updates_mirror;
ALTER TRIGGER apply_artist_release_pending_updates_slave ON release RENAME TO apply_artist_release_pending_updates_mirror;
ALTER TRIGGER apply_artist_release_pending_updates_slave ON release_country RENAME TO apply_artist_release_pending_updates_mirror;
ALTER TRIGGER apply_artist_release_pending_updates_slave ON release_first_release_date RENAME TO apply_artist_release_pending_updates_mirror;
ALTER TRIGGER apply_artist_release_pending_updates_slave ON release_label RENAME TO apply_artist_release_pending_updates_mirror;
ALTER TRIGGER apply_artist_release_pending_updates_slave ON track RENAME TO apply_artist_release_pending_updates_mirror;

ALTER TRIGGER a_ins_release_slave ON release RENAME TO a_ins_release_mirror;
ALTER TRIGGER a_upd_release_slave ON release RENAME TO a_upd_release_mirror;
ALTER TRIGGER a_del_release_slave ON release RENAME TO a_del_release_mirror;
ALTER TRIGGER a_ins_release_event_slave ON release_country RENAME TO a_ins_release_event_mirror;
ALTER TRIGGER a_upd_release_event_slave ON release_country RENAME TO a_upd_release_event_mirror;
ALTER TRIGGER a_del_release_event_slave ON release_country RENAME TO a_del_release_event_mirror;
ALTER TRIGGER a_ins_release_group_slave ON release_group RENAME TO a_ins_release_group_mirror;
ALTER TRIGGER a_upd_release_group_slave ON release_group RENAME TO a_upd_release_group_mirror;
ALTER TRIGGER a_del_release_group_slave ON release_group RENAME TO a_del_release_group_mirror;
ALTER TRIGGER a_upd_release_group_meta_slave ON release_group_meta RENAME TO a_upd_release_group_meta_mirror;
ALTER TRIGGER a_ins_release_group_secondary_type_join_slave ON release_group_secondary_type_join RENAME TO a_ins_release_group_secondary_type_join_mirror;
ALTER TRIGGER a_del_release_group_secondary_type_join_slave ON release_group_secondary_type_join RENAME TO a_del_release_group_secondary_type_join_mirror;
ALTER TRIGGER a_ins_release_label_slave ON release_label RENAME TO a_ins_release_label_mirror;
ALTER TRIGGER a_upd_release_label_slave ON release_label RENAME TO a_upd_release_label_mirror;
ALTER TRIGGER a_del_release_label_slave ON release_label RENAME TO a_del_release_label_mirror;
ALTER TRIGGER a_ins_track_slave ON track RENAME TO a_ins_track_mirror;
ALTER TRIGGER a_upd_track_slave ON track RENAME TO a_upd_track_mirror;
ALTER TRIGGER a_del_track_slave ON track RENAME TO a_del_track_mirror;

ALTER FUNCTION a_ins_release_slave() RENAME TO a_ins_release_mirror;
ALTER FUNCTION a_upd_release_slave() RENAME TO a_upd_release_mirror;
ALTER FUNCTION a_del_release_slave() RENAME TO a_del_release_mirror;
ALTER FUNCTION a_ins_release_event_slave() RENAME TO a_ins_release_event_mirror;
ALTER FUNCTION a_upd_release_event_slave() RENAME TO a_upd_release_event_mirror;
ALTER FUNCTION a_del_release_event_slave() RENAME TO a_del_release_event_mirror;
ALTER FUNCTION a_ins_release_group_slave() RENAME TO a_ins_release_group_mirror;
ALTER FUNCTION a_upd_release_group_slave() RENAME TO a_upd_release_group_mirror;
ALTER FUNCTION a_del_release_group_slave() RENAME TO a_del_release_group_mirror;
ALTER FUNCTION a_upd_release_group_meta_slave() RENAME TO a_upd_release_group_meta_mirror;
ALTER FUNCTION a_ins_release_group_secondary_type_join_slave() RENAME TO a_ins_release_group_secondary_type_join_mirror;
ALTER FUNCTION a_del_release_group_secondary_type_join_slave() RENAME TO a_del_release_group_secondary_type_join_mirror;
ALTER FUNCTION a_ins_release_label_slave() RENAME TO a_ins_release_label_mirror;
ALTER FUNCTION a_upd_release_label_slave() RENAME TO a_upd_release_label_mirror;
ALTER FUNCTION a_del_release_label_slave() RENAME TO a_del_release_label_mirror;
ALTER FUNCTION a_ins_track_slave() RENAME TO a_ins_track_mirror;
ALTER FUNCTION a_upd_track_slave() RENAME TO a_upd_track_mirror;
ALTER FUNCTION a_del_track_slave() RENAME TO a_del_track_mirror;

COMMIT;
