#### table access_tokens
0;id;BIGINT;0;;1
1;user_id;TEXT;1;;0
2;device_id;TEXT;0;;0
3;token;TEXT;1;;0
4;last_used;BIGINT;0;;0
#### table presence_allow_inbound
0;observed_user_id;TEXT;1;;0
1;observer_user_id;TEXT;1;;0
#### table account_data
0;user_id;TEXT;1;;0
1;account_data_type;TEXT;1;;0
2;stream_id;BIGINT;1;;0
3;content;TEXT;1;;0
#### table presence_list
0;user_id;TEXT;1;;0
1;observed_user_id;TEXT;1;;0
2;accepted;BOOLEAN;1;;0
#### table account_data_max_stream_id
0;Lock;CHAR(1);1;'X';0
1;stream_id;BIGINT;1;;0
#### table presence_stream
0;stream_id;BIGINT;0;;0
1;user_id;TEXT;0;;0
2;state;TEXT;0;;0
3;last_active_ts;BIGINT;0;;0
4;last_federation_update_ts;BIGINT;0;;0
5;last_user_sync_ts;BIGINT;0;;0
6;status_msg;TEXT;0;;0
7;currently_active;BOOLEAN;0;;0
#### table application_services
0;id;BIGINT;0;;1
1;url;TEXT;0;;0
2;token;TEXT;0;;0
3;hs_token;TEXT;0;;0
4;sender;TEXT;0;;0
#### table profiles
0;user_id;TEXT;1;;0
1;displayname;TEXT;0;;0
2;avatar_url;TEXT;0;;0
#### table application_services_regex
0;id;BIGINT;0;;1
1;as_id;BIGINT;1;;0
2;namespace;INTEGER;0;;0
3;regex;TEXT;0;;0
#### table push_rules
0;id;BIGINT;0;;1
1;user_name;TEXT;1;;0
2;rule_id;TEXT;1;;0
3;priority_class;SMALLINT;1;;0
4;priority;INTEGER;1;0;0
5;conditions;TEXT;1;;0
6;actions;TEXT;1;;0
#### table application_services_state
0;as_id;TEXT;0;;1
1;state;VARCHAR(5);0;;0
2;last_txn;INTEGER;0;;0
#### table push_rules_enable
0;id;BIGINT;0;;1
1;user_name;TEXT;1;;0
2;rule_id;TEXT;1;;0
3;enabled;SMALLINT;0;;0
#### table application_services_txns
0;as_id;TEXT;1;;0
1;txn_id;INTEGER;1;;0
2;event_ids;TEXT;1;;0
#### table push_rules_stream
0;stream_id;BIGINT;1;;0
1;event_stream_ordering;BIGINT;1;;0
2;user_id;TEXT;1;;0
3;rule_id;TEXT;1;;0
4;op;TEXT;1;;0
5;priority_class;SMALLINT;0;;0
6;priority;INTEGER;0;;0
7;conditions;TEXT;0;;0
8;actions;TEXT;0;;0
#### table applied_schema_deltas
0;version;INTEGER;1;;0
1;file;TEXT;1;;0
#### table pusher_throttle
0;pusher;BIGINT;1;;1
1;room_id;TEXT;1;;2
2;last_sent_ts;BIGINT;0;;0
3;throttle_ms;BIGINT;0;;0
#### table background_updates
0;update_name;TEXT;1;;0
1;progress_json;TEXT;1;;0
#### table pushers
0;id;BIGINT;0;;1
1;user_name;TEXT;1;;0
2;access_token;BIGINT;0;NULL;0
3;profile_tag;VARCHAR(32);1;;0
4;kind;VARCHAR(8);1;;0
5;app_id;VARCHAR(64);1;;0
6;app_display_name;VARCHAR(64);1;;0
7;device_display_name;VARCHAR(128);1;;0
8;pushkey;TEXT;1;;0
9;ts;BIGINT;1;;0
10;lang;VARCHAR(8);0;;0
11;data;TEXT;0;;0
12;last_stream_ordering;INTEGER;0;;0
13;last_success;BIGINT;0;;0
14;failing_since;BIGINT;0;;0
#### table current_state_events
0;event_id;TEXT;1;;0
1;room_id;TEXT;1;;0
2;type;TEXT;1;;0
3;state_key;TEXT;1;;0
#### table receipts_graph
0;room_id;TEXT;1;;0
1;receipt_type;TEXT;1;;0
2;user_id;TEXT;1;;0
3;event_ids;TEXT;1;;0
4;data;TEXT;1;;0
#### table current_state_resets
0;event_stream_ordering;BIGINT;1;;1
#### table receipts_linearized
0;stream_id;BIGINT;1;;0
1;room_id;TEXT;1;;0
2;receipt_type;TEXT;1;;0
3;user_id;TEXT;1;;0
4;event_id;TEXT;1;;0
5;data;TEXT;1;;0
#### table deleted_pushers
0;stream_id;BIGINT;1;;0
1;app_id;TEXT;1;;0
2;pushkey;TEXT;1;;0
3;user_id;TEXT;1;;0
#### table received_transactions
0;transaction_id;TEXT;0;;0
1;origin;TEXT;0;;0
2;ts;BIGINT;0;;0
3;response_code;INTEGER;0;;0
4;response_json;bytea;0;;0
5;has_been_referenced;smallint;0;0;0
#### table destinations
0;destination;TEXT;0;;1
1;retry_last_ts;BIGINT;0;;0
2;retry_interval;INTEGER;0;;0
#### table redactions
0;event_id;TEXT;1;;0
1;redacts;TEXT;1;;0
#### table e2e_device_keys_json
0;user_id;TEXT;1;;0
1;device_id;TEXT;1;;0
2;ts_added_ms;BIGINT;1;;0
3;key_json;TEXT;1;;0
#### table refresh_tokens
0;id;INTEGER;0;;1
1;token;TEXT;1;;0
2;user_id;TEXT;1;;0
#### table e2e_one_time_keys_json
0;user_id;TEXT;1;;0
1;device_id;TEXT;1;;0
2;algorithm;TEXT;1;;0
3;key_id;TEXT;1;;0
4;ts_added_ms;BIGINT;1;;0
5;key_json;TEXT;1;;0
#### table rejections
0;event_id;TEXT;1;;0
1;reason;TEXT;1;;0
2;last_check;TEXT;1;;0
#### table event_auth
0;event_id;TEXT;1;;0
1;auth_id;TEXT;1;;0
2;room_id;TEXT;1;;0
#### table remote_media_cache
0;media_origin;TEXT;0;;0
1;media_id;TEXT;0;;0
2;media_type;TEXT;0;;0
3;created_ts;BIGINT;0;;0
4;upload_name;TEXT;0;;0
5;media_length;INTEGER;0;;0
6;filesystem_id;TEXT;0;;0
#### table event_backward_extremities
0;event_id;TEXT;1;;0
1;room_id;TEXT;1;;0
#### table remote_media_cache_thumbnails
0;media_origin;TEXT;0;;0
1;media_id;TEXT;0;;0
2;thumbnail_width;INTEGER;0;;0
3;thumbnail_height;INTEGER;0;;0
4;thumbnail_method;TEXT;0;;0
5;thumbnail_type;TEXT;0;;0
6;thumbnail_length;INTEGER;0;;0
7;filesystem_id;TEXT;0;;0
#### table event_content_hashes
0;event_id;TEXT;0;;0
1;algorithm;TEXT;0;;0
2;hash;bytea;0;;0
#### table room_account_data
0;user_id;TEXT;1;;0
1;room_id;TEXT;1;;0
2;account_data_type;TEXT;1;;0
3;stream_id;BIGINT;1;;0
4;content;TEXT;1;;0
#### table event_destinations
0;event_id;TEXT;1;;0
1;destination;TEXT;1;;0
2;delivered_ts;BIGINT;0;0;0
#### table room_alias_servers
0;room_alias;TEXT;1;;0
1;server;TEXT;1;;0
#### table event_edge_hashes
0;event_id;TEXT;0;;0
1;prev_event_id;TEXT;0;;0
2;algorithm;TEXT;0;;0
3;hash;bytea;0;;0
#### table room_aliases
0;room_alias;TEXT;1;;0
1;room_id;TEXT;1;;0
2;creator;TEXT;0;;0
#### table event_edges
0;event_id;TEXT;1;;0
1;prev_event_id;TEXT;1;;0
2;room_id;TEXT;1;;0
3;is_state;BOOL;1;;0
#### table room_depth
0;room_id;TEXT;1;;0
1;min_depth;INTEGER;1;;0
#### table event_forward_extremities
0;event_id;TEXT;1;;0
1;room_id;TEXT;1;;0
#### table room_hosts
0;room_id;TEXT;1;;0
1;host;TEXT;1;;0
#### table event_json
0;event_id;TEXT;1;;0
1;room_id;TEXT;1;;0
2;internal_metadata;TEXT;1;;0
3;json;TEXT;1;;0
#### table room_memberships
0;event_id;TEXT;1;;0
1;user_id;TEXT;1;;0
2;sender;TEXT;1;;0
3;room_id;TEXT;1;;0
4;membership;TEXT;1;;0
5;forgotten;INTEGER;0;0;0
#### table event_push_actions
0;room_id;TEXT;1;;0
1;event_id;TEXT;1;;0
2;user_id;TEXT;1;;0
3;profile_tag;VARCHAR(32);0;;0
4;actions;TEXT;1;;0
5;topological_ordering;BIGINT;0;;0
6;stream_ordering;BIGINT;0;;0
7;notif;SMALLINT;0;;0
8;highlight;SMALLINT;0;;0
#### table room_names
0;event_id;TEXT;1;;0
1;room_id;TEXT;1;;0
2;name;TEXT;1;;0
#### table event_reference_hashes
0;event_id;TEXT;0;;0
1;algorithm;TEXT;0;;0
2;hash;bytea;0;;0
#### table room_tags
0;user_id;TEXT;1;;0
1;room_id;TEXT;1;;0
2;tag;TEXT;1;;0
3;content;TEXT;1;;0
#### table event_reports
0;id;BIGINT;1;;1
1;received_ts;BIGINT;1;;0
2;room_id;TEXT;1;;0
3;event_id;TEXT;1;;0
4;user_id;TEXT;1;;0
5;reason;TEXT;0;;0
6;content;TEXT;0;;0
#### table room_tags_revisions
0;user_id;TEXT;1;;0
1;room_id;TEXT;1;;0
2;stream_id;BIGINT;1;;0
#### table event_search
0;event_id;;0;;0
1;room_id;;0;;0
2;sender;;0;;0
3;key;;0;;0
4;value;;0;;0
#### table rooms
0;room_id;TEXT;1;;1
1;is_public;BOOL;0;;0
2;creator;TEXT;0;;0
#### table event_search_content
0;docid;INTEGER;0;;1
1;c0event_id;;0;;0
2;c1room_id;;0;;0
3;c2sender;;0;;0
4;c3key;;0;;0
5;c4value;;0;;0
#### table schema_version
0;Lock;CHAR(1);1;'X';0
1;version;INTEGER;1;;0
2;upgraded;BOOL;1;;0
#### table event_search_docsize
0;docid;INTEGER;0;;1
1;size;BLOB;0;;0
#### table sent_transactions
0;id;BIGINT;0;;1
1;transaction_id;TEXT;0;;0
2;destination;TEXT;0;;0
3;response_code;INTEGER;0;0;0
4;response_json;TEXT;0;;0
5;ts;BIGINT;0;;0
#### table event_search_segdir
0;level;INTEGER;0;;1
1;idx;INTEGER;0;;2
2;start_block;INTEGER;0;;0
3;leaves_end_block;INTEGER;0;;0
4;end_block;INTEGER;0;;0
5;root;BLOB;0;;0
#### table server_keys_json
0;server_name;TEXT;1;;0
1;key_id;TEXT;1;;0
2;from_server;TEXT;1;;0
3;ts_added_ms;BIGINT;1;;0
4;ts_valid_until_ms;BIGINT;1;;0
5;key_json;bytea;1;;0
#### table event_search_segments
0;blockid;INTEGER;0;;1
1;block;BLOB;0;;0
#### table server_signature_keys
0;server_name;TEXT;0;;0
1;key_id;TEXT;0;;0
2;from_server;TEXT;0;;0
3;ts_added_ms;BIGINT;0;;0
4;verify_key;bytea;0;;0
#### table event_search_stat
0;id;INTEGER;0;;1
1;value;BLOB;0;;0
#### table server_tls_certificates
0;server_name;TEXT;0;;0
1;fingerprint;TEXT;0;;0
2;from_server;TEXT;0;;0
3;ts_added_ms;BIGINT;0;;0
4;tls_certificate;bytea;0;;0
#### table event_signatures
0;event_id;TEXT;0;;0
1;signature_name;TEXT;0;;0
2;key_id;TEXT;0;;0
3;signature;bytea;0;;0
#### table state_events
0;event_id;TEXT;1;;0
1;room_id;TEXT;1;;0
2;type;TEXT;1;;0
3;state_key;TEXT;1;;0
4;prev_state;TEXT;0;;0
#### table event_to_state_groups
0;event_id;TEXT;1;;0
1;state_group;BIGINT;1;;0
#### table state_forward_extremities
0;event_id;TEXT;1;;0
1;room_id;TEXT;1;;0
2;type;TEXT;1;;0
3;state_key;TEXT;1;;0
#### table events
0;stream_ordering;INTEGER;0;;1
1;topological_ordering;BIGINT;1;;0
2;event_id;TEXT;1;;0
3;type;TEXT;1;;0
4;room_id;TEXT;1;;0
5;content;TEXT;1;;0
6;unrecognized_keys;TEXT;0;;0
7;processed;BOOL;1;;0
8;outlier;BOOL;1;;0
9;depth;BIGINT;1;0;0
10;origin_server_ts;BIGINT;0;;0
11;received_ts;BIGINT;0;;0
#### table state_groups
0;id;BIGINT;0;;1
1;room_id;TEXT;1;;0
2;event_id;TEXT;1;;0
#### table ex_outlier_stream
0;event_stream_ordering;BIGINT;1;;1
1;event_id;TEXT;1;;0
2;state_group;BIGINT;1;;0
#### table state_groups_state
0;state_group;BIGINT;1;;0
1;room_id;TEXT;1;;0
2;type;TEXT;1;;0
3;state_key;TEXT;1;;0
4;event_id;TEXT;1;;0
#### table feedback
0;event_id;TEXT;1;;0
1;feedback_type;TEXT;0;;0
2;target_event_id;TEXT;0;;0
3;sender;TEXT;0;;0
4;room_id;TEXT;0;;0
#### table stats_reporting
0;reported_stream_token;INTEGER;0;;0
1;reported_time;BIGINT;0;;0
#### table guest_access
0;event_id;TEXT;1;;0
1;room_id;TEXT;1;;0
2;guest_access;TEXT;1;;0
#### table threepid_guest_access_tokens
0;medium;TEXT;0;;0
1;address;TEXT;0;;0
2;guest_access_token;TEXT;0;;0
3;first_inviter;TEXT;0;;0
#### table history_visibility
0;event_id;TEXT;1;;0
1;room_id;TEXT;1;;0
2;history_visibility;TEXT;1;;0
#### table topics
0;event_id;TEXT;1;;0
1;room_id;TEXT;1;;0
2;topic;TEXT;1;;0
#### table local_invites
0;stream_id;BIGINT;1;;0
1;inviter;TEXT;1;;0
2;invitee;TEXT;1;;0
3;event_id;TEXT;1;;0
4;room_id;TEXT;1;;0
5;locally_rejected;TEXT;0;;0
6;replaced_by;TEXT;0;;0
#### table transaction_id_to_pdu
0;transaction_id;INTEGER;0;;0
1;destination;TEXT;0;;0
2;pdu_id;TEXT;0;;0
3;pdu_origin;TEXT;0;;0
#### table local_media_repository
0;media_id;TEXT;0;;0
1;media_type;TEXT;0;;0
2;media_length;INTEGER;0;;0
3;created_ts;BIGINT;0;;0
4;upload_name;TEXT;0;;0
5;user_id;TEXT;0;;0
#### table user_filters
0;user_id;TEXT;0;;0
1;filter_id;BIGINT;0;;0
2;filter_json;bytea;0;;0
#### table local_media_repository_thumbnails
0;media_id;TEXT;0;;0
1;thumbnail_width;INTEGER;0;;0
2;thumbnail_height;INTEGER;0;;0
3;thumbnail_type;TEXT;0;;0
4;thumbnail_method;TEXT;0;;0
5;thumbnail_length;INTEGER;0;;0
#### table user_ips
0;user_id;TEXT;1;;0
1;access_token;TEXT;1;;0
2;device_id;TEXT;0;;0
3;ip;TEXT;1;;0
4;user_agent;TEXT;1;;0
5;last_seen;BIGINT;1;;0
#### table local_media_repository_url_cache
0;url;TEXT;0;;0
1;response_code;INTEGER;0;;0
2;etag;TEXT;0;;0
3;expires;INTEGER;0;;0
4;og;TEXT;0;;0
5;media_id;TEXT;0;;0
6;download_ts;BIGINT;0;;0
#### table user_threepids
0;user_id;TEXT;1;;0
1;medium;TEXT;1;;0
2;address;TEXT;1;;0
3;validated_at;BIGINT;1;;0
4;added_at;BIGINT;1;;0
#### table open_id_tokens
0;token;TEXT;1;;1
1;ts_valid_until_ms;bigint;1;;0
2;user_id;TEXT;1;;0
#### table users
0;name;TEXT;0;;0
1;password_hash;TEXT;0;;0
2;creation_ts;BIGINT;0;;0
3;admin;SMALLINT;1;0;0
4;upgrade_ts;BIGINT;0;;0
5;is_guest;SMALLINT;1;0;0
6;appservice_id;TEXT;0;;0
#### table presence
0;user_id;TEXT;1;;0
1;state;VARCHAR(20);0;;0
2;status_msg;TEXT;0;;0
3;mtime;BIGINT;0;;0