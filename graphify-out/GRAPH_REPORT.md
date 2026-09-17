# Graph Report - Glimpses  (2026-08-30)

## Corpus Check
- cluster-only mode — file stats not available

## Summary
- 1549 nodes · 2912 edges · 157 communities (120 shown, 37 thin omitted)
- Extraction: 98% EXTRACTED · 2% INFERRED · 0% AMBIGUOUS · INFERRED: 52 edges (avg confidence: 0.79)
- Token cost: 8,657 input · 1,759 output

## Graph Freshness
- Built from commit: `5b414e5e`
- Run `git rev-parse HEAD` and compare to check if the graph is stale.
- Run `graphify update .` after code changes (no API cost).

## Community Hubs (Navigation)
- API Gateway Configuration
- Cascade Delete Logic
- Events Data Access
- Frontend Dependencies
- Ingestion IAM Policies
- Download Management DAO
- Gallery Data Access
- EventBridge Orchestration
- Authentication Context
- Membership Data Access
- User Profile DAO
- Cascade Delete Permissions
- Infrastructure Root Modules
- Membership Unit Tests
- Events Infrastructure Inputs
- Download Infrastructure Config
- Gallery Route Handling
- Photo Processing Logic
- DynamoDB Table Definitions
- Upload Status DAO
- Gallery UI Components
- Camera and Scanning
- HEIC Image Conversion
- Membership Route Handling
- Database API Service
- S3 Bucket Configuration
- Event List Components
- User Profile UI
- Gallery Unit Tests
- Gallery Infrastructure Inputs
- Upload Status Routing
- Web Hosting Infrastructure
- Static Marketing Pages
- Project Documentation
- Events Route Handling
- Events Manager Tests
- Ingestion Data Access
- Analytics and Privacy
- Attendee List Processing
- Frontend Tooling Config
- Profile Route Handling
- CloudFront Photo Distribution
- Cognito Auth Service
- Event Management API
- Lambda Python Requirements
- Upload Status Tests
- Events IAM Policies
- Gallery IAM Policies
- Zip Extraction Logic
- Membership Infrastructure Inputs
- Ingestion Finalization Tests
- Download Manager Tests
- Membership Management API
- State Machine Infrastructure
- Navigation and Layout
- Upload Status Inputs
- Cognito User Pool
- SNS Alerting System
- Ingestion Route Handling
- Profile Infrastructure Inputs
- Upload Flow Component
- Membership IAM Policies
- Profile IAM Policies
- Upload Status Permissions
- DB API Inputs
- Ingestion Step Functions
- Frontend Infrastructure Outputs
- Cascade Delete Tests
- HEIC Converter Inputs
- Cascade Delete IAM
- DB API IAM
- Download IAM Role
- Events IAM Role
- Gallery IAM Role
- HEIC Converter IAM
- Ingestion IAM Role
- Membership IAM Role
- Profile IAM Role
- Upload Status IAM
- Frontend Provider Config
- Cascade Delete Monitoring
- Cascade Delete Outputs
- DB API Monitoring
- DB API Permissions
- DB API Outputs
- Download Monitoring
- Download Outputs
- Events Monitoring
- Events Outputs
- Gallery Monitoring
- Gallery Outputs
- HEIC Converter Monitoring
- HEIC Converter Permissions
- HEIC Converter Outputs
- Ingestion Monitoring
- Ingestion Outputs
- Membership Monitoring
- Membership Outputs
- Profile Service Monitoring
- Profile Service Infrastructure Outputs
- Upload Status Monitoring
- Upload Status Infrastructure Outputs
- Cascade Delete Lambda
- DB API Lambda
- HEIC Converter Lambda
- Membership Lambda
- Core Infrastructure Providers
- Profile Lambda
- Upload Status Lambda
- DynamoDB Infrastructure
- Frontend Infrastructure
- Frontend Entry Point
- Infrastructure Provider Configuration

## God Nodes (most connected - your core abstractions)
1. `aws_api_gateway_rest_api.this` - 57 edges
2. `react` - 23 edges
3. `_event()` - 19 edges
4. `handle_process_one_photo()` - 17 edges
5. `useAuth()` - 17 edges
6. `delete_event_cascade()` - 15 edges
7. `_attendee()` - 14 edges
8. `aws_api_gateway_resource.event_id` - 14 edges
9. `aws_api_gateway_deployment.this` - 13 edges
10. `module.buckets` - 13 edges

## Surprising Connections (you probably didn't know these)
- `test_list_my_events_returns_only_pending_and_attendee_rows()` --calls--> `_full_event()`  [INFERRED]
  Backend/events/test/integration/test_route_handler.py → Backend/membership/test/unit/test_manager.py
- `Home()` --indirect_call--> `getProfile()`  [INFERRED]
  Frontend/src/pages/app/Home.jsx → Frontend/src/lib/profileApi.js
- `test_delete_event_cascades_photos_faces_attendees_and_row()` --calls--> `lambda_handler()`  [INFERRED]
  Backend/cascadeDelete/test/integration/test_route_handler.py → Backend/cascadeDelete/src/routeHandler.py
- `test_delete_event_is_a_no_op_when_already_gone()` --calls--> `lambda_handler()`  [INFERRED]
  Backend/cascadeDelete/test/integration/test_route_handler.py → Backend/cascadeDelete/src/routeHandler.py
- `test_delete_photos_cascades_faces_row_s3_and_decrements_counters()` --calls--> `lambda_handler()`  [INFERRED]
  Backend/cascadeDelete/test/integration/test_route_handler.py → Backend/cascadeDelete/src/routeHandler.py

## Import Cycles
- None detected.

## Communities (157 total, 37 thin omitted)

### Community 0 - "API Gateway Configuration"
Cohesion: 0.06
Nodes (82): aws_api_gateway_authorizer.cognito, aws_api_gateway_deployment.this, aws_api_gateway_gateway_response.default_4xx, aws_api_gateway_gateway_response.default_5xx, aws_api_gateway_integration.options, aws_api_gateway_integration_response.options, aws_api_gateway_integration.route, aws_api_gateway_method.options (+74 more)

### Community 1 - "Cascade Delete Logic"
Cohesion: 0.10
Nodes (40): batch_delete_attendees(), batch_delete_faces(), batch_delete_photos(), decrement_event_counters(), delete_collection(), delete_event_row(), delete_faces_from_collection(), delete_photo_row() (+32 more)

### Community 2 - "Events Data Access"
Cohesion: 0.10
Nodes (50): access_code_exists(), batch_get_events(), count_attendees(), create_collection(), delete_collection(), _dynamodb(), _event_attendees_table(), _events_table() (+42 more)

### Community 3 - "Frontend Dependencies"
Cohesion: 0.04
Nodes (47): amazon-cognito-identity-js, axios, dependencies, amazon-cognito-identity-js, axios, jsqr, jszip, motion (+39 more)

### Community 4 - "Ingestion IAM Policies"
Cohesion: 0.06
Nodes (37): aws_iam_role_policy.event_attendees_access, aws_iam_role_policy.events_access, aws_iam_role_policy.faces_access, aws_iam_role_policy.photos_access, aws_iam_role_policy.photos_bucket_access, aws_iam_role_policy.rekognition_access, aws_iam_role_policy.users_access, data.aws_iam_policy_document.event_attendees_access (+29 more)

### Community 5 - "Download Management DAO"
Cohesion: 0.11
Nodes (34): abort_multipart_upload(), _batch_get_photo_keys(), complete_multipart_upload(), create_download(), create_multipart_upload(), _downloads_table(), generate_presigned_url(), get_download() (+26 more)

### Community 6 - "Gallery Data Access"
Cohesion: 0.11
Nodes (35): batch_get_photos(), _event_attendees_table(), _events_table(), generate_presigned_url(), get_attendee(), get_event(), get_photo_by_id(), invoke_cascade_delete() (+27 more)

### Community 7 - "EventBridge Orchestration"
Cohesion: 0.12
Nodes (32): aws_cloudwatch_event_rule.upload_complete, aws_cloudwatch_event_target.start_ingestion, aws_iam_role.eventbridge_start_execution, aws_iam_role_policy.distributed_map_self_execution, aws_iam_role_policy.eventbridge_start_execution, aws_iam_role_policy.invoke_db_api, aws_iam_role_policy.invoke_ingestion, aws_iam_role_policy.manifest_access (+24 more)

### Community 8 - "Authentication Context"
Cohesion: 0.16
Nodes (16): App(), AuthShell(), RequireAuth(), AuthContext, useAuth(), userFromSession(), queryClient, ForgotPassword() (+8 more)

### Community 9 - "Membership Data Access"
Cohesion: 0.16
Nodes (32): _dynamodb(), _event_attendees_table(), _events_table(), get_attendee(), get_event(), get_event_by_access_code(), get_users(), list_attendees_by_status() (+24 more)

### Community 10 - "User Profile DAO"
Cohesion: 0.14
Nodes (29): create_user(), delete_object(), detect_face_count(), _dynamodb(), generate_presigned_get_url(), generate_presigned_put_url(), get_user(), _rekognition() (+21 more)

### Community 11 - "Cascade Delete Permissions"
Cohesion: 0.08
Nodes (27): aws_iam_role_policy.event_attendees_access, aws_iam_role_policy.events_access, aws_iam_role_policy.faces_access, aws_iam_role_policy.photos_access, aws_iam_role_policy.photos_bucket_access, aws_iam_role_policy.rekognition_access, data.aws_iam_policy_document.event_attendees_access, data.aws_iam_policy_document.events_access (+19 more)

### Community 12 - "Infrastructure Root Modules"
Cohesion: 0.20
Nodes (24): module.alarms, module.api_gateway, module.buckets, module.cascade_delete, module.cloudfront, module.cognito, module.db_api, module.download (+16 more)

### Community 13 - "Membership Unit Tests"
Cohesion: 0.18
Nodes (25): _attendee(), _event(), _full_event(), test_admit_attendee_rejects_non_pending(), test_admit_attendee_transitions_pending_to_attendee(), test_deny_attendee_transitions_pending_to_blocked(), test_eject_attendee_rejects_non_attendee(), test_eject_attendee_transitions_attendee_to_blocked() (+17 more)

### Community 14 - "Events Infrastructure Inputs"
Cohesion: 0.10
Nodes (20): var.alarm_sns_topic_arn, var.cascade_delete_function_arn, var.cascade_delete_function_name, var.cloudfront_domain_name, var.deploy_artifacts_bucket, var.event_attendees_table_arn, var.event_attendees_table_name, var.events_table_arn (+12 more)

### Community 15 - "Download Infrastructure Config"
Cohesion: 0.11
Nodes (18): aws_iam_role_policy.photos_access, aws_iam_role_policy.photos_bucket_access, data.aws_iam_policy_document.photos_access, data.aws_iam_policy_document.photos_bucket_access, var.alarm_sns_topic_arn, var.deploy_artifacts_bucket, var.name_prefix, var.photos_bucket_arn (+10 more)

### Community 16 - "Gallery Route Handling"
Cohesion: 0.45
Nodes (19): lambda_handler(), inject_lambda_context, _api_event(), _create_event_attendees_table(), _create_events_table(), _create_photos_table(), _FakeLambdaContext, _put_event() (+11 more)

### Community 17 - "Photo Processing Logic"
Cohesion: 0.11
Nodes (25): compute_content_hash(), sniff_format(), make_thumbnail(), normalize_to_jpeg(), invoke_heic_converter(), _lambda_client(), handle_process_one_photo(), test_computes_sha256_hash() (+17 more)

### Community 18 - "DynamoDB Table Definitions"
Cohesion: 0.17
Nodes (12): aws_dynamodb_table.downloads, aws_dynamodb_table.event_attendees, aws_dynamodb_table.events, aws_dynamodb_table.faces, aws_dynamodb_table.jobs, aws_dynamodb_table.photos, aws_dynamodb_table.users, output.event_attendees_stream_arn (+4 more)

### Community 19 - "Upload Status DAO"
Cohesion: 0.21
Nodes (17): _events_table(), generate_presigned_put_url(), get_event(), get_job(), _jobs_table(), query_latest_job(), _s3(), get_job_status() (+9 more)

### Community 20 - "Gallery UI Components"
Cohesion: 0.23
Nodes (14): ConfirmDialog(), EventMenu(), Gallery(), formatDate(), PhotoViewer(), api, getDownloadStatus(), requestDownload() (+6 more)

### Community 21 - "Camera and Scanning"
Cohesion: 0.13
Nodes (20): rules, react/only-export-components, react/rules-of-hooks, $schema, QRScanner(), scanLoop(), startCamera(), CameraCapture() (+12 more)

### Community 22 - "HEIC Image Conversion"
Cohesion: 0.16
Nodes (12): heic_to_jpeg(), get_object(), put_object(), handle(), convert_and_store(), lambda_handler(), inject_lambda_context, _FakeLambdaContext (+4 more)

### Community 23 - "Membership Route Handling"
Cohesion: 0.43
Nodes (19): lambda_handler(), inject_lambda_context, _api_event(), _create_event_attendees_table(), _create_events_table(), _create_users_table(), _FakeLambdaContext, _put_event() (+11 more)

### Community 24 - "Database API Service"
Cohesion: 0.18
Nodes (13): create_job(), _table(), update_job_status(), handle(), _create(), handle_action(), _update_status(), lambda_handler() (+5 more)

### Community 25 - "S3 Bucket Configuration"
Cohesion: 0.18
Nodes (14): aws_s3_bucket_cors_configuration.photos, aws_s3_bucket.deploy_artifacts, aws_s3_bucket_lifecycle_configuration.photos, aws_s3_bucket_notification.photos_eventbridge, aws_s3_bucket.photos, aws_s3_bucket_public_access_block.deploy_artifacts, aws_s3_bucket_public_access_block.photos, output.deploy_artifacts_bucket_arn (+6 more)

### Community 26 - "Event List Components"
Cohesion: 0.17
Nodes (16): plugins, DEFAULT_MESSAGES, LoadingSpinner(), SelfieToast(), getMyEvents(), getOrganizedEvents(), getEventInfo(), EventEntry() (+8 more)

### Community 27 - "User Profile UI"
Cohesion: 0.47
Nodes (6): SelfieOptionsSheet(), deleteSelfie(), getProfile(), updateProfile(), uploadSelfie(), Profile()

### Community 28 - "Gallery Unit Tests"
Cohesion: 0.23
Nodes (15): _photo(), _stub_signing(), test_bulk_delete_photos_drops_unauthorized_and_reuses_single_events_lookup(), test_bulk_delete_photos_skips_invoke_when_nothing_authorized(), test_delete_photo_authorizes_organizer(), test_delete_photo_authorizes_uploader(), test_delete_photo_rejects_unauthorized_caller(), test_delete_photo_rejects_when_event_archived() (+7 more)

### Community 29 - "Gallery Infrastructure Inputs"
Cohesion: 0.11
Nodes (17): var.alarm_sns_topic_arn, var.cascade_delete_function_arn, var.cascade_delete_function_name, var.cloudfront_domain_name, var.deploy_artifacts_bucket, var.event_attendees_table_arn, var.event_attendees_table_name, var.events_table_arn (+9 more)

### Community 30 - "Upload Status Routing"
Cohesion: 0.42
Nodes (14): lambda_handler(), inject_lambda_context, _api_event(), _create_events_table(), _create_jobs_table(), _FakeLambdaContext, mock_aws, test_job_status_reflects_row_written_by_db_api() (+6 more)

### Community 31 - "Web Hosting Infrastructure"
Cohesion: 0.23
Nodes (11): aws_cloudfront_distribution.hosting, aws_cloudfront_origin_access_control.hosting, aws_s3_bucket.hosting, aws_s3_bucket_policy.hosting_oac_access, aws_s3_bucket_public_access_block.hosting, data.aws_iam_policy_document.hosting_oac_access, output.bucket_arn, output.bucket_name (+3 more)

### Community 32 - "Static Marketing Pages"
Cohesion: 0.16
Nodes (11): ImageSlot(), About(), audiences, pairs, HowItWorks(), pipeline, properties, stackGroups (+3 more)

### Community 33 - "Project Documentation"
Cohesion: 0.07
Nodes (26): 1. AWS account and IAM, 2. Local AWS CLI profile, 3. Terraform 1.10 or newer, 4. Bootstrap the Terraform state bucket by hand, once, 5. Check your account's real Rekognition quota, 6. Variables to change for your own deployment, 7. Deploy, Architecture (+18 more)

### Community 34 - "Events Route Handling"
Cohesion: 0.38
Nodes (13): handle_internal_action(), lambda_handler(), inject_lambda_context, _api_event(), _create_event_attendees_table(), _create_events_table(), _FakeLambdaContext, mock_aws (+5 more)

### Community 35 - "Events Manager Tests"
Cohesion: 0.24
Nodes (12): _event(), test_archive_event_deletes_collection_and_marks_archived(), test_archive_event_is_a_no_op_when_already_archived(), test_delete_event_invokes_cascade_delete(), test_get_event_detail_raises_for_non_owner(), test_get_stats_returns_photo_count_storage_and_attendee_count(), test_list_events_returns_public_shape(), test_list_my_events_excludes_self_organized_events() (+4 more)

### Community 36 - "Ingestion Data Access"
Cohesion: 0.14
Nodes (26): add_matched_photo_ids(), delete_object(), _dynamodb(), _event_attendees_table(), _events_table(), _faces_table(), get_event(), get_faces() (+18 more)

### Community 37 - "Analytics and Privacy"
Cohesion: 0.21
Nodes (8): AppHeader(), getEventStats(), formatBytes(), EventAnalytics(), Privacy(), PRIVACY_ITEMS, CONSENT_POINTS, SelfieInfo()

### Community 38 - "Attendee List Processing"
Cohesion: 0.48
Nodes (5): list_admitted_attendees(), put_object(), handle_list_attendees(), test_list_attendees_empty_event(), test_list_attendees_writes_manifest_of_admitted_userids()

### Community 39 - "Frontend Tooling Config"
Cohesion: 0.67
Nodes (3): Oxlint, React Compiler, React + Vite starter template

### Community 40 - "Profile Route Handling"
Cohesion: 0.45
Nodes (11): lambda_handler(), inject_lambda_context, _api_event(), _create_users_table(), _FakeLambdaContext, mock_aws, test_confirm_selfie_rejects_and_deletes_when_not_exactly_one_face(), test_delete_selfie_removes_object() (+3 more)

### Community 41 - "CloudFront Photo Distribution"
Cohesion: 0.18
Nodes (15): aws_cloudfront_distribution.photos, aws_cloudfront_key_group.photos_signing, aws_cloudfront_origin_access_control.photos, aws_cloudfront_public_key.photos_signing, aws_s3_bucket_policy.photos_oac_access, data.aws_iam_policy_document.photos_oac_access, output.distribution_domain_name, output.distribution_id (+7 more)

### Community 42 - "Cognito Auth Service"
Cohesion: 0.27
Nodes (11): AuthProvider(), confirmPassword(), confirmSignUp(), forgotPassword(), getCurrentSession(), login(), refreshCurrentSession(), resendConfirmationCode() (+3 more)

### Community 43 - "Event Management API"
Cohesion: 0.28
Nodes (9): archiveEvent(), createEvent(), deleteEvent(), getEventDetail(), updateEventDetail(), CreateEvent(), CONTRIBUTION_POLICIES, EventSettings() (+1 more)

### Community 44 - "Lambda Python Requirements"
Cohesion: 0.15
Nodes (15): cascadeDelete requirements.txt, db_api requirements.txt, download requirements.txt, events requirements.txt, gallery requirements.txt, heic_converter requirements.txt, ingestion requirements.txt, membership requirements.txt (+7 more)

### Community 45 - "Upload Status Tests"
Cohesion: 0.24
Nodes (9): _event(), _job(), test_get_job_status_rejects_job_belonging_to_another_uploader(), test_get_job_status_returns_job_owned_by_caller(), test_get_latest_job_returns_most_recent_via_dao(), test_mint_upload_url_allows_organizer_when_organizer_only(), test_mint_upload_url_builds_key_from_event_and_user_and_generated_job_id(), test_mint_upload_url_rejects_archived_event() (+1 more)

### Community 46 - "Events IAM Policies"
Cohesion: 0.27
Nodes (10): aws_iam_role_policy.event_attendees_access, aws_iam_role_policy.events_access, aws_iam_role_policy.invoke_cascade_delete, aws_iam_role_policy.photos_bucket_access, aws_iam_role_policy.rekognition_access, data.aws_iam_policy_document.event_attendees_access, data.aws_iam_policy_document.events_access, data.aws_iam_policy_document.invoke_cascade_delete (+2 more)

### Community 47 - "Gallery IAM Policies"
Cohesion: 0.27
Nodes (10): aws_iam_role_policy.event_attendees_access, aws_iam_role_policy.events_access, aws_iam_role_policy.invoke_cascade_delete, aws_iam_role_policy.photos_access, aws_iam_role_policy.photos_bucket_access, data.aws_iam_policy_document.event_attendees_access, data.aws_iam_policy_document.events_access, data.aws_iam_policy_document.invoke_cascade_delete (+2 more)

### Community 48 - "Zip Extraction Logic"
Cohesion: 0.26
Nodes (10): extract_entries(), _is_junk_entry(), get_user(), handle_stage(), _parse_upload_key(), test_stage_copies_each_entry_raw_and_writes_manifest(), test_stage_does_no_format_sniffing_or_decoding(), _zip_bytes() (+2 more)

### Community 49 - "Membership Infrastructure Inputs"
Cohesion: 0.18
Nodes (10): var.alarm_sns_topic_arn, var.cloudfront_domain_name, var.deploy_artifacts_bucket, var.event_attendees_table_arn, var.event_attendees_table_name, var.events_table_arn, var.events_table_name, var.name_prefix (+2 more)

### Community 50 - "Ingestion Finalization Tests"
Cohesion: 0.62
Nodes (6): _manifest_bytes(), _result_file_bytes(), test_all_succeeded(), test_counts_task_level_index_failures(), test_some_photos_failed_but_others_succeeded(), test_total_failure_when_nothing_succeeded()

### Community 52 - "Membership Management API"
Cohesion: 0.42
Nodes (7): admitAttendee(), denyAttendee(), ejectAttendee(), getAttendees(), joinEvent(), JoinLink(), Roster()

### Community 56 - "Upload Status Inputs"
Cohesion: 0.20
Nodes (9): var.alarm_sns_topic_arn, var.deploy_artifacts_bucket, var.events_table_arn, var.events_table_name, var.jobs_table_arn, var.jobs_table_name, var.name_prefix, var.photos_bucket_arn (+1 more)

### Community 57 - "Cognito User Pool"
Cohesion: 0.33
Nodes (6): aws_cognito_user_pool_client.this, aws_cognito_user_pool.this, output.user_pool_arn, output.user_pool_client_id, output.user_pool_id, var.name_prefix

### Community 58 - "SNS Alerting System"
Cohesion: 0.32
Nodes (5): aws_sns_topic.alerts, aws_sns_topic_subscription.alerts_email, output.alarm_sns_topic_arn, var.alarm_email, var.name_prefix

### Community 59 - "Ingestion Route Handling"
Cohesion: 0.20
Nodes (11): handle(), handle_stream_records(), lambda_handler(), inject_lambda_context, _create_tables(), _FakeLambdaContext, mock_aws, test_event_attendees_stream_record_triggers_match_attendees() (+3 more)

### Community 60 - "Profile Infrastructure Inputs"
Cohesion: 0.25
Nodes (7): var.alarm_sns_topic_arn, var.deploy_artifacts_bucket, var.name_prefix, var.photos_bucket_arn, var.photos_bucket_name, var.users_table_arn, var.users_table_name

### Community 62 - "Upload Flow Component"
Cohesion: 0.43
Nodes (6): getJobStatus(), getUploadUrl(), fibonacciPollDelay(), STAGE_LABEL, STAGE_PCT, UploadFlow()

### Community 64 - "Membership IAM Policies"
Cohesion: 0.43
Nodes (6): aws_iam_role_policy.event_attendees_access, aws_iam_role_policy.events_access, aws_iam_role_policy.users_access, data.aws_iam_policy_document.event_attendees_access, data.aws_iam_policy_document.events_access, data.aws_iam_policy_document.users_access

### Community 65 - "Profile IAM Policies"
Cohesion: 0.43
Nodes (6): aws_iam_role_policy.photos_bucket_access, aws_iam_role_policy.rekognition_access, aws_iam_role_policy.users_access, data.aws_iam_policy_document.photos_bucket_access, data.aws_iam_policy_document.rekognition_access, data.aws_iam_policy_document.users_access

### Community 66 - "Upload Status Permissions"
Cohesion: 0.43
Nodes (6): aws_iam_role_policy.events_access, aws_iam_role_policy.jobs_access, aws_iam_role_policy.photos_bucket_access, data.aws_iam_policy_document.events_access, data.aws_iam_policy_document.jobs_access, data.aws_iam_policy_document.photos_bucket_access

### Community 67 - "DB API Inputs"
Cohesion: 0.33
Nodes (5): var.alarm_sns_topic_arn, var.deploy_artifacts_bucket, var.jobs_table_arn, var.jobs_table_name, var.name_prefix

### Community 69 - "Ingestion Step Functions"
Cohesion: 0.33
Nodes (11): count_result_items(), parse_result_file(), parse_result_manifest(), get_object(), handle_build_photos_manifest(), handle_finalize(), handle_step(), _manifest_bytes() (+3 more)

### Community 72 - "Frontend Infrastructure Outputs"
Cohesion: 0.47
Nodes (4): module.hosting, output.bucket_name, output.distribution_domain_name, output.distribution_id

### Community 73 - "Cascade Delete Tests"
Cohesion: 0.60
Nodes (3): _event(), test_delete_event_cascade_deletes_collection_faces_photos_s3_and_attendees(), test_delete_event_cascade_skips_batch_calls_when_nothing_to_delete()

### Community 74 - "HEIC Converter Inputs"
Cohesion: 0.40
Nodes (4): var.alarm_sns_topic_arn, var.deploy_artifacts_bucket, var.name_prefix, var.photos_bucket_arn

### Community 77 - "Cascade Delete IAM"
Cohesion: 0.83
Nodes (3): aws_iam_role_policy_attachment.basic_execution, aws_iam_role.this, data.aws_iam_policy_document.assume_role

### Community 79 - "DB API IAM"
Cohesion: 0.83
Nodes (3): aws_iam_role_policy_attachment.basic_execution, aws_iam_role.this, data.aws_iam_policy_document.assume_role

### Community 80 - "Download IAM Role"
Cohesion: 0.83
Nodes (3): aws_iam_role_policy_attachment.basic_execution, aws_iam_role.this, data.aws_iam_policy_document.assume_role

### Community 81 - "Events IAM Role"
Cohesion: 0.83
Nodes (3): aws_iam_role_policy_attachment.basic_execution, aws_iam_role.this, data.aws_iam_policy_document.assume_role

### Community 82 - "Gallery IAM Role"
Cohesion: 0.83
Nodes (3): aws_iam_role_policy_attachment.basic_execution, aws_iam_role.this, data.aws_iam_policy_document.assume_role

### Community 83 - "HEIC Converter IAM"
Cohesion: 0.83
Nodes (3): aws_iam_role_policy_attachment.basic_execution, aws_iam_role.this, data.aws_iam_policy_document.assume_role

### Community 84 - "Ingestion IAM Role"
Cohesion: 0.83
Nodes (3): aws_iam_role_policy_attachment.basic_execution, aws_iam_role.this, data.aws_iam_policy_document.assume_role

### Community 85 - "Membership IAM Role"
Cohesion: 0.83
Nodes (3): aws_iam_role_policy_attachment.basic_execution, aws_iam_role.this, data.aws_iam_policy_document.assume_role

### Community 86 - "Profile IAM Role"
Cohesion: 0.83
Nodes (3): aws_iam_role_policy_attachment.basic_execution, aws_iam_role.this, data.aws_iam_policy_document.assume_role

### Community 87 - "Upload Status IAM"
Cohesion: 0.83
Nodes (3): aws_iam_role_policy_attachment.basic_execution, aws_iam_role.this, data.aws_iam_policy_document.assume_role

## Knowledge Gaps
- **240 isolated node(s):** `aws_cloudwatch_log_group.this`, `aws_cloudwatch_metric_alarm.errors`, `output.function_arn`, `output.function_name`, `aws_cloudwatch_log_group.this` (+235 more)
  These have ≤1 connection - possible missing edges or undocumented components.
- **37 thin communities (<3 nodes) omitted from report** — run `graphify query` to explore isolated nodes.

## Suggested Questions
_Questions this graph is uniquely positioned to answer:_

- **Why does `handle_internal_action()` connect `Events Route Handling` to `Events Data Access`?**
  _High betweenness centrality (0.002) - this node is a cross-community bridge._
- **Why does `test_list_my_events_returns_only_pending_and_attendee_rows()` connect `Events Route Handling` to `Membership Unit Tests`?**
  _High betweenness centrality (0.002) - this node is a cross-community bridge._
- **What connects `aws_cloudwatch_log_group.this`, `aws_cloudwatch_metric_alarm.errors`, `output.function_arn` to the rest of the system?**
  _240 weakly-connected nodes found - possible documentation gaps or missing edges._
- **Should `API Gateway Configuration` be split into smaller, more focused modules?**
  _Cohesion score 0.05833905284831846 - nodes in this community are weakly interconnected._
- **Should `Cascade Delete Logic` be split into smaller, more focused modules?**
  _Cohesion score 0.10105580693815988 - nodes in this community are weakly interconnected._
- **Should `Events Data Access` be split into smaller, more focused modules?**
  _Cohesion score 0.09796806966618288 - nodes in this community are weakly interconnected._
- **Should `Frontend Dependencies` be split into smaller, more focused modules?**
  _Cohesion score 0.041666666666666664 - nodes in this community are weakly interconnected._