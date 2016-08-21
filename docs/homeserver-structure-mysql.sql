
CREATE TABLE `access_tokens` (
 	id 	BIGINT,
 	user_id VARCHAR(255),
 	device_id VARCHAR(255),
 	token 	TEXT,
 	last_used 	BIGINT,
  KEY (`user_id`),
  PRIMARY KEY (`id`)
 	);

CREATE TABLE `presence_allow_inbound` (
 	observed_user_id VARCHAR(255),
 	observer_user_id VARCHAR(255)
 	);

CREATE TABLE `account_data` (
 	user_id VARCHAR(255),
 	account_data_type 	TEXT,
 	stream_id 	BIGINT,
 	content 	TEXT,
  KEY (`user_id`),
  KEY (`stream_id`)
 	);

CREATE TABLE `presence_list` (
 	user_id VARCHAR(255),
 	observed_user_id VARCHAR(255),
 	accepted 	BOOLEAN
 	);

CREATE TABLE `account_data_max_stream_id` (
 	`Lock` 	CHAR(1),
 	stream_id 	BIGINT
 	);

CREATE TABLE `presence_stream` (
 	stream_id 	BIGINT,
 	user_id VARCHAR(255),
 	state 	TEXT,
 	last_active_ts 	BIGINT,
 	last_federation_update_ts 	BIGINT,
 	last_user_sync_ts 	BIGINT,
 	status_msg 	TEXT,
 	currently_active 	BOOLEAN,
  KEY (`user_id`),
  KEY (`stream_id`)
 	);

CREATE TABLE `application_services` (
 	id 	BIGINT,
 	url 	TEXT,
 	token 	TEXT,
 	hs_token 	TEXT,
 	sender 	TEXT,
  KEY (`id`)
 	);

CREATE TABLE `profiles` (
 	user_id VARCHAR(255),
 	displayname 	TEXT,
 	avatar_url 	TEXT,
  KEY (`user_id`)
 	);

CREATE TABLE `application_services_regex` (
 	id 	BIGINT,
 	as_id 	BIGINT,
 	namespace 	INT,
 	regex 	TEXT,
  KEY (`id`)
 	);

CREATE TABLE `push_rules` (
 	id 	BIGINT,
 	user_name 	TEXT,
 	rule_id VARCHAR(255),
 	priority_class 	SMALLINT,
 	priority 	INT,
 	conditions 	TEXT,
 	actions 	TEXT
 	);

CREATE TABLE `application_services_state` (
 	as_id VARCHAR(255),
 	state 	VARCHAR(5),
 	last_txn 	INTEGER
 	);

CREATE TABLE `push_rules_enable` (
 	id 	BIGINT,
 	user_name 	TEXT,
 	rule_id VARCHAR(255),
 	enabled 	SMALLINT
 	);

CREATE TABLE `application_services_txns` (
 	as_id VARCHAR(255),
 	txn_id 	INT,
 	event_ids 	TEXT
 	);

CREATE TABLE `push_rules_stream` (
 	stream_id 	BIGINT,
 	event_stream_ordering 	BIGINT,
 	user_id VARCHAR(255),
 	rule_id VARCHAR(255),
 	op 	TEXT,
 	priority_class 	SMALLINT,
 	priority 	INT,
 	conditions 	TEXT,
 	actions 	TEXT
 	);

CREATE TABLE `applied_schema_deltas` (
 	version 	INT,
 	file 	TEXT
 	);

CREATE TABLE `pusher_throttle` (
 	pusher 	BIGINT,
 	room_id VARCHAR(255),
 	last_sent_ts 	BIGINT,
 	throttle_ms 	BIGINT
 	);

CREATE TABLE `background_updates` (
 	update_name 	TEXT,
 	progress_json 	TEXT
 	);

CREATE TABLE `pushers` (
 	id 	BIGINT,
 	user_name 	TEXT,
 	access_token 	BIGINT,
 	profile_tag 	VARCHAR(32),
 	kind 	VARCHAR(8),
 	app_id 	VARCHAR(64),
 	app_display_name 	VARCHAR(64),
 	device_display_name 	VARCHAR(128),
 	pushkey 	TEXT,
 	ts 	BIGINT,
 	lang 	VARCHAR(8),
 	data 	TEXT,
 	last_stream_ordering 	INT,
 	last_success 	BIGINT,
 	failing_since 	BIGINT
);



CREATE TABLE `current_state_events` (
 	event_id VARCHAR(255),
 	room_id VARCHAR(255),
 	type 	TEXT,
 	state_key 	TEXT,
  KEY (`room_id`),
  KEY (`event_id`)
 	);

CREATE TABLE `receipts_graph` (
 	room_id VARCHAR(255),
 	receipt_type 	TEXT,
 	user_id VARCHAR(255),
 	event_ids 	TEXT,
 	data 	TEXT
 	);

CREATE TABLE `current_state_resets` (
 	event_stream_ordering 	BIGINT
 	);

CREATE TABLE `receipts_linearized` (
 	stream_id 	BIGINT,
 	room_id VARCHAR(255),
 	receipt_type 	TEXT,
 	user_id VARCHAR(255),
 	event_id VARCHAR(255),
 	data 	TEXT
 	);

CREATE TABLE `deleted_pushers` (
 	stream_id 	BIGINT,
 	app_id VARCHAR(255),
 	pushkey 	TEXT,
 	user_id VARCHAR(255)
 	);


CREATE TABLE `received_transactions` (
 	transaction_id VARCHAR(255),
 	origin 	TEXT,
 	ts 	BIGINT,
 	response_code 	INT,
 	response_json 	LONGTEXT,
 	has_been_referenced 	smallint
 	);


CREATE TABLE `destinations` (
 	destination 	TEXT,
 	retry_last_ts 	BIGINT,
 	retry_interval 	INTEGER
 	);

CREATE TABLE `redactions` (
 	event_id VARCHAR(255),
 	redacts 	TEXT,
  KEY (`event_id`)
 	);

CREATE TABLE `e2e_device_keys_json` (
 	user_id VARCHAR(255),
 	device_id VARCHAR(255),
 	ts_added_ms 	BIGINT,
 	key_json 	TEXT
 	);

CREATE TABLE `refresh_tokens` (
 	id	INT,
 	token 	TEXT,
 	user_id VARCHAR(255)
 	);

CREATE TABLE `e2e_one_time_keys_json` (
 	user_id VARCHAR(255),
 	device_id VARCHAR(255),
 	algorithm 	TEXT,
 	key_id VARCHAR(255),
 	ts_added_ms 	BIGINT,
 	key_json 	TEXT
 	);

CREATE TABLE `rejections` (
 	event_id VARCHAR(255),
 	reason 	TEXT,
 	last_check 	TEXT
 	);

CREATE TABLE `event_auth` (
 	event_id VARCHAR(255),
 	auth_id VARCHAR(255),
 	room_id VARCHAR(255),
  KEY (`room_id`),
  KEY (`auth_id`),
  KEY (`event_id`)
 	);

CREATE TABLE `remote_media_cache` (
 	media_origin 	TEXT,
 	media_id VARCHAR(255),
 	media_type 	TEXT,
 	created_ts 	BIGINT,
 	upload_name 	TEXT,
 	media_length 	INT,
 	filesystem_id VARCHAR(255)
 	);

CREATE TABLE `event_backward_extremities` (
 	event_id VARCHAR(255),
 	room_id VARCHAR(255)
 	);

CREATE TABLE `remote_media_cache_thumbnails` (
 	media_origin 	TEXT,
 	media_id VARCHAR(255),
 	thumbnail_width 	INT,
 	thumbnail_height 	INT,
 	thumbnail_method 	TEXT,
 	thumbnail_type 	TEXT,
 	thumbnail_length 	INT,
 	filesystem_id VARCHAR(255)
 	);

CREATE TABLE `event_content_hashes` (
 	event_id VARCHAR(255),
 	algorithm 	TEXT,
 	hash 	text
 	);




CREATE TABLE `room_account_data` (
 	user_id VARCHAR(255),
 	room_id VARCHAR(255),
 	account_data_type 	TEXT,
 	stream_id 	BIGINT,
 	content 	TEXT,
  KEY (`room_id`),
  KEY (`user_id`),
  KEY (`stream_id`)
 	);

CREATE TABLE `event_destinations` (
 	event_id VARCHAR(255),
 	destination 	TEXT,
 	delivered_ts 	BIGINT
 	);

CREATE TABLE `room_alias_servers` (
 	room_alias 	TEXT,
 	server 	TEXT
 	);

CREATE TABLE `event_edge_hashes` (
 	event_id VARCHAR(255),
 	prev_event_id VARCHAR(255),
 	algorithm 	TEXT,
 	hash varchar(255)
 	);

CREATE TABLE `room_aliases` (
 	room_alias 	TEXT,
 	room_id VARCHAR(255),
 	creator 	TEXT
 	);
ALTER TABLE `room_aliases` ADD INDEX(`room_id`); 

CREATE TABLE `event_edges` (
 	event_id VARCHAR(255),
 	prev_event_id VARCHAR(255),
 	room_id VARCHAR(255),
 	is_state 	BOOL
 	);

CREATE TABLE `room_depth` (
 	room_id VARCHAR(255),
 	min_depth 	INTEGER
 	);

CREATE TABLE `event_forward_extremities` (
 	event_id VARCHAR(255),
 	room_id VARCHAR(255),
  KEY (`room_id`),
  KEY (`event_id`)
 	);

CREATE TABLE `room_hosts` (
 	room_id VARCHAR(255),
 	host 	TEXT
 	);

CREATE TABLE `event_json` (
 	event_id VARCHAR(255),
 	room_id VARCHAR(255),
 	internal_metadata 	TEXT,
 	json 	TEXT
 	);

CREATE TABLE `room_memberships` (
 	event_id VARCHAR(255),
 	user_id VARCHAR(255),
 	sender 	TEXT,
 	room_id VARCHAR(255),
 	membership 	TEXT,
 	forgotten 	INTEGER
 	);
ALTER TABLE `room_memberships` ADD PRIMARY KEY(`event_id`); 
ALTER TABLE `room_memberships` ADD INDEX(`user_id`); 
ALTER TABLE `room_memberships` ADD INDEX(`room_id`); 



CREATE TABLE `event_push_actions` (
 	room_id VARCHAR(255),
 	event_id VARCHAR(255),
 	user_id VARCHAR(255),
 	profile_tag 	VARCHAR(32),
 	actions 	TEXT,
 	topological_ordering 	BIGINT,
 	stream_ordering 	BIGINT,
 	notif 	SMALLINT,
 	highlight 	SMALLINT,
  KEY (`room_id`),
  KEY (`user_id`),
  KEY (`event_id`)
 	);

ALTER TABLE `event_push_actions` ADD INDEX(`room_id`); 


CREATE TABLE `room_names` (
 	event_id VARCHAR(255),
 	room_id VARCHAR(255),
 	name 	TEXT,
  KEY (`room_id`),
  KEY (`event_id`)
 	);

CREATE TABLE `event_reference_hashes` (
 	event_id VARCHAR(255),
 	algorithm 	TEXT,
 	hash varchar(255),
  KEY (`event_id`)
 	);

CREATE TABLE `room_tags` (
 	user_id VARCHAR(255),
 	room_id VARCHAR(255),
 	tag 	TEXT,
 	content 	TEXT,
  KEY (`room_id`),
  KEY (`user_id`)
 	);

CREATE TABLE `event_reports` (
 	id 	BIGINT,
 	received_ts 	BIGINT,
 	room_id VARCHAR(255),
 	event_id VARCHAR(255),
 	user_id VARCHAR(255),
 	reason 	TEXT,
 	content 	TEXT,
  KEY (`room_id`),
  KEY (`user_id`),
  KEY (`event_id`)
 	);

CREATE TABLE `room_tags_revisions` (
 	user_id VARCHAR(255),
 	room_id VARCHAR(255),
 	stream_id 	BIGINT,
  KEY (`room_id`),
  KEY (`user_id`),
  KEY (`stream_id`)
 	);



CREATE TABLE `event_search` (
 	event_id VARCHAR(255),
 	room_id VARCHAR(255),
 	sender 	TEXT,
 	`key` 	TEXT,
 	`value` 	TEXT,
  KEY (`room_id`),
  KEY (`event_id`)
 	);



CREATE TABLE `rooms` (
 	room_id VARCHAR(255),
 	is_public 	BOOL,
 	creator 	TEXT,
  KEY (`room_id`)
 	);
ALTER TABLE `rooms` ADD PRIMARY KEY(`room_id`);


CREATE TABLE `event_search_content` (
 	docid	INT,
 	c0event_id VARCHAR(255),
 	c1room_id VARCHAR(255),
 	c2sender 	TEXT,
 	c3key 	TEXT,
 	c4value 	TEXT
 	);

CREATE TABLE `schema_version` (
 	`Lock` 	CHAR(1),
 	version 	INT,
 	upgraded 	BOOL
 	);

CREATE TABLE `event_search_docsize` (
 	docid	INT,
 	size 	BLOB
 	);

CREATE TABLE `sent_transactions` (
 	id 	BIGINT,
 	transaction_id VARCHAR(255),
 	destination 	TEXT,
 	response_code 	INT,
 	response_json 	TEXT,
 	ts 	BIGINT
 	);




CREATE TABLE `event_search_segdir` (
 	level	INT,
 	idx 	INTEGER,
 	start_block 	INT,
 	leaves_end_block 	INT,
 	end_block 	INT,
 	root 	BLOB
 	);

CREATE TABLE `server_keys_json` (
 	server_name 	TEXT,
 	key_id VARCHAR(255),
 	from_server 	TEXT,
 	ts_added_ms 	BIGINT,
 	ts_valid_until_ms 	BIGINT,
 	key_json 	TEXT
 	);

CREATE TABLE `event_search_segments` (
 	blockid	INT,
 	block 	BLOB
 	);

CREATE TABLE `server_signature_keys` (
 	server_name 	TEXT,
 	key_id VARCHAR(255),
 	from_server 	TEXT,
 	ts_added_ms 	BIGINT,
 	verify_key 	TEXT
 	);

CREATE TABLE `event_search_stat` (
 	id	INT,
 	`value` 	BLOB
 	);

CREATE TABLE `server_tls_certificates` (
 	server_name 	TEXT,
 	fingerprint 	TEXT,
 	from_server 	TEXT,
 	ts_added_ms 	BIGINT,
 	tls_certificate 	TEXT
 	);

CREATE TABLE `event_signatures` (
 	event_id VARCHAR(255),
 	signature_name 	TEXT,
 	key_id VARCHAR(255),
 	signature 	TEXT
 	);

CREATE TABLE `state_events` (
 	event_id VARCHAR(255),
 	room_id VARCHAR(255),
 	type 	TEXT,
 	state_key 	TEXT,
 	prev_state 	TEXT
 	);

CREATE TABLE `event_to_state_groups` (
 	event_id VARCHAR(255),
 	state_group 	BIGINT,
  KEY (`state_group`),
  KEY (`event_id`)
 	);

CREATE TABLE `state_forward_extremities` (
 	event_id VARCHAR(255),
 	room_id VARCHAR(255),
 	type 	TEXT,
 	state_key 	TEXT
 	);




CREATE TABLE `events` (
 	stream_ordering	INT,
 	topological_ordering 	BIGINT,
 	event_id VARCHAR(255),
 	type 	TEXT,
 	room_id VARCHAR(255),
 	content 	TEXT,
 	unrecognized_keys 	TEXT,
 	processed 	BOOL,
 	outlier 	BOOL,
 	depth 	BIGINT,
 	origin_server_ts 	BIGINT,
 	received_ts 	BIGINT
);

CREATE TABLE `state_groups` (
 	id 	BIGINT,
 	room_id VARCHAR(255),
 	event_id VARCHAR(255),
  KEY (`room_id`),
  KEY (`event_id`)
 	);

CREATE TABLE `ex_outlier_stream` (
 	event_stream_ordering 	BIGINT,
 	event_id VARCHAR(255),
 	state_group 	BIGINT
  KEY (`state_group`),
  KEY (`event_id`)
 	);

CREATE TABLE `state_groups_state` (
 	state_group 	BIGINT,
 	room_id VARCHAR(255),
 	type 	TEXT,
 	state_key 	TEXT,
 	event_id VARCHAR(255)
  KEY (`room_id`),
  KEY (`state_group`),
  KEY (`event_id`)
 	);
-- type for example: m.roompower_levels

CREATE TABLE `feedback` (
 	event_id VARCHAR(255),
 	feedback_type 	TEXT,
 	target_event_id VARCHAR(255),
 	sender 	TEXT,
 	room_id VARCHAR(255)
 	);

CREATE TABLE `stats_reporting` (
 	reported_stream_token 	INT,
 	reported_time 	BIGINT
 	);

CREATE TABLE `guest_access` (
 	event_id VARCHAR(255),
 	room_id VARCHAR(255),
 	guest_access 	TEXT
 	);
ALTER TABLE `guest_access` ADD INDEX(`event_id`); 
ALTER TABLE `guest_access` ADD INDEX(`room_id`); 

CREATE TABLE `threepid_guest_access_tokens` (
 	medium 	TEXT,
 	address 	TEXT,
 	guest_access_token 	TEXT,
 	first_inviter 	TEXT
 	);

CREATE TABLE `history_visibility` (
 	event_id VARCHAR(255),
 	room_id VARCHAR(255),
 	history_visibility 	TEXT
 	);
ALTER TABLE `history_visibility` ADD INDEX(`event_id`); 
ALTER TABLE `history_visibility` ADD INDEX(`room_id`); 


CREATE TABLE `topics` (
 	event_id VARCHAR(255),
 	room_id VARCHAR(255),
 	topic 	TEXT
 	);

ALTER TABLE `topics` ADD INDEX(`event_id`); 
ALTER TABLE `topics` ADD INDEX(`room_id`); 


CREATE TABLE `local_invites` (
 	stream_id 	BIGINT,
 	inviter 	TEXT,
 	invitee 	TEXT,
 	event_id VARCHAR(255),
 	room_id VARCHAR(255),
 	locally_rejected 	TEXT,
 	replaced_by 	TEXT,
  KEY (`room_id`),
  KEY (`event_id`),
  KEY (`event_id`)
 	);

CREATE TABLE `transaction_id_to_pdu` (
 	transaction_id 	INT,
 	destination 	TEXT,
 	pdu_id VARCHAR(255),
 	pdu_origin 	TEXT
 	);

CREATE TABLE `local_media_repository` (
 	media_id VARCHAR(255),
 	media_type 	TEXT,
 	media_length 	INT,
 	created_ts 	BIGINT,
 	upload_name 	TEXT,
 	user_id VARCHAR(255)
 	);

CREATE TABLE `user_filters` (
 	user_id VARCHAR(255),
 	filter_id 	BIGINT,
 	filter_json 	TEXT
 	);

CREATE TABLE `local_media_repository_thumbnails` (
 	media_id VARCHAR(255),
 	thumbnail_width 	INT,
 	thumbnail_height 	INT,
 	thumbnail_type 	TEXT,
 	thumbnail_method 	TEXT,
 	thumbnail_length 	INTEGER
 	);

CREATE TABLE `user_ips` (
 	user_id VARCHAR(255),
 	access_token 	TEXT,
 	device_id VARCHAR(255),
 	ip 	TEXT,
 	user_agent 	TEXT,
 	last_seen 	BIGINT,
  KEY (`user_id`)
 	);

CREATE TABLE `local_media_repository_url_cache` (
 	url 	TEXT,
 	response_code 	INT,
 	etag 	TEXT,
 	expires 	INT,
 	og 	TEXT,
 	media_id VARCHAR(255),
 	download_ts 	BIGINT
 	);

CREATE TABLE `user_threepids` (
 	user_id VARCHAR(255),
 	medium 	TEXT,
 	address 	TEXT,
 	validated_at 	BIGINT,
 	added_at 	BIGINT
 	);

CREATE TABLE `open_id_tokens` (
 	token 	TEXT,
 	ts_valid_until_ms 	bigint,
 	user_id VARCHAR(255)
 	);



CREATE TABLE IF NOT EXISTS `users` (
  `name` varchar(255) NOT NULL DEFAULT '',
  `password_hash` text,
  `creation_ts` bigint(20) DEFAULT NULL,
  `admin` smallint(6) DEFAULT NULL,
  `upgrade_ts` bigint(20) DEFAULT NULL,
  `is_guest` smallint(6) DEFAULT NULL,
  `appservice_id` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
ALTER TABLE `users`
  ADD PRIMARY KEY (`name`);
ALTER TABLE `users` ADD INDEX(`name`); 


CREATE TABLE `presence` (
 	user_id VARCHAR(255),
 	state 	VARCHAR(20),
 	status_msg 	TEXT,
 	mtime 	BIGINT)