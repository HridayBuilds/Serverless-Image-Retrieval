locals {
  routes = merge(
    local.profile_routes,
    local.events_routes,
    local.membership_routes,
    local.upload_status_routes,
    local.gallery_routes,
    local.download_routes,
  )

  cors_resources = {
    # routes_membership.tf
    event_info               = aws_api_gateway_resource.event_info.id
    event_join               = aws_api_gateway_resource.event_join.id
    event_leave              = aws_api_gateway_resource.event_leave.id
    event_attendees          = aws_api_gateway_resource.event_attendees.id
    event_attendee_user_id   = aws_api_gateway_resource.event_attendee_user_id.id
    event_attendee_admit     = aws_api_gateway_resource.event_attendee_admit.id
    event_attendee_deny      = aws_api_gateway_resource.event_attendee_deny.id
    event_attendee_eject     = aws_api_gateway_resource.event_attendee_eject.id

    # routes_events.tf
    events                   = aws_api_gateway_resource.events.id
    event_id                 = aws_api_gateway_resource.event_id.id
    events_my_events         = aws_api_gateway_resource.events_my_events.id
    event_archive            = aws_api_gateway_resource.event_archive.id
    event_stats              = aws_api_gateway_resource.event_stats.id
    event_qrcode             = aws_api_gateway_resource.event_qrcode.id

    # routes_gallery.tf
    event_photos             = aws_api_gateway_resource.event_photos.id
    event_photo_id           = aws_api_gateway_resource.event_photo_id.id
    event_photos_download_urls = aws_api_gateway_resource.event_photos_download_urls.id
    event_photos_bulk_delete = aws_api_gateway_resource.event_photos_bulk_delete.id

    # routes_download.tf
    event_photos_download    = aws_api_gateway_resource.event_photos_download.id
    event_downloads          = aws_api_gateway_resource.event_downloads.id
    event_download_id        = aws_api_gateway_resource.event_download_id.id
    event_download_status    = aws_api_gateway_resource.event_download_status.id

    # routes_upload_status.tf
    event_upload_url         = aws_api_gateway_resource.event_upload_url.id
    event_jobs               = aws_api_gateway_resource.event_jobs.id
    event_job_id             = aws_api_gateway_resource.event_job_id.id
    event_job_status         = aws_api_gateway_resource.event_job_status.id
    event_jobs_latest        = aws_api_gateway_resource.event_jobs_latest.id

    # routes_profile.tf
    profile                  = aws_api_gateway_resource.profile.id
    profile_selfie           = aws_api_gateway_resource.profile_selfie.id
    profile_selfie_confirm   = aws_api_gateway_resource.profile_selfie_confirm.id
  }
}

resource "aws_api_gateway_method" "route" {
  for_each = local.routes

  rest_api_id   = aws_api_gateway_rest_api.this.id
  resource_id   = each.value.resource_id
  http_method   = each.value.http_method
  authorization = "COGNITO_USER_POOLS"
  authorizer_id = aws_api_gateway_authorizer.cognito.id

  request_validator_id = each.value.request_model != null ? aws_api_gateway_request_validator.body.id : null
  request_models       = each.value.request_model != null ? { "application/json" = each.value.request_model } : null
}

resource "aws_api_gateway_integration" "route" {
  for_each = local.routes

  rest_api_id             = aws_api_gateway_rest_api.this.id
  resource_id             = each.value.resource_id
  http_method             = aws_api_gateway_method.route[each.key].http_method
  integration_http_method = "POST"
  type                    = "AWS_PROXY"
  uri                     = "arn:aws:apigateway:${var.aws_region}:lambda:path/2015-03-31/functions/${each.value.function_arn}/invocations"
}

resource "aws_api_gateway_method" "options" {
  for_each = local.cors_resources

  rest_api_id   = aws_api_gateway_rest_api.this.id
  resource_id   = each.value
  http_method   = "OPTIONS"
  authorization = "NONE"
}

resource "aws_api_gateway_integration" "options" {
  for_each = local.cors_resources

  rest_api_id = aws_api_gateway_rest_api.this.id
  resource_id = each.value
  http_method = aws_api_gateway_method.options[each.key].http_method
  type        = "MOCK"

  request_templates = {
    "application/json" = "{\"statusCode\": 200}"
  }
}

resource "aws_api_gateway_method_response" "options" {
  for_each = local.cors_resources

  rest_api_id = aws_api_gateway_rest_api.this.id
  resource_id = each.value
  http_method = aws_api_gateway_method.options[each.key].http_method
  status_code = "200"

  response_parameters = {
    "method.response.header.Access-Control-Allow-Headers" = true
    "method.response.header.Access-Control-Allow-Methods" = true
    "method.response.header.Access-Control-Allow-Origin"  = true
  }
}

resource "aws_api_gateway_integration_response" "options" {
  for_each = local.cors_resources

  rest_api_id = aws_api_gateway_rest_api.this.id
  resource_id = each.value
  http_method = aws_api_gateway_method.options[each.key].http_method
  status_code = aws_api_gateway_method_response.options[each.key].status_code

  response_parameters = {
    "method.response.header.Access-Control-Allow-Headers" = "'Content-Type,Authorization'"
    "method.response.header.Access-Control-Allow-Methods" = "'GET,POST,PUT,DELETE,OPTIONS'"
    "method.response.header.Access-Control-Allow-Origin"  = "'*'"
  }

  depends_on = [aws_api_gateway_integration.options]
}

resource "aws_api_gateway_gateway_response" "default_4xx" {
  rest_api_id   = aws_api_gateway_rest_api.this.id
  response_type = "DEFAULT_4XX"

  response_parameters = {
    "gatewayresponse.header.Access-Control-Allow-Origin" = "'*'"
  }
}

resource "aws_api_gateway_gateway_response" "default_5xx" {
  rest_api_id   = aws_api_gateway_rest_api.this.id
  response_type = "DEFAULT_5XX"

  response_parameters = {
    "gatewayresponse.header.Access-Control-Allow-Origin" = "'*'"
  }
}

resource "aws_api_gateway_deployment" "this" {
  rest_api_id = aws_api_gateway_rest_api.this.id

  triggers = {
    redeployment = sha1(jsonencode({
      routes  = local.routes
      options = local.cors_resources
    }))
  }

  depends_on = [
    aws_api_gateway_method.route,
    aws_api_gateway_integration.route,
    aws_api_gateway_method.options,
    aws_api_gateway_integration.options,
    aws_api_gateway_method_response.options,
    aws_api_gateway_integration_response.options,
    aws_api_gateway_gateway_response.default_4xx,
    aws_api_gateway_gateway_response.default_5xx,
  ]

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_api_gateway_stage" "prod" {
  rest_api_id   = aws_api_gateway_rest_api.this.id
  deployment_id = aws_api_gateway_deployment.this.id
  stage_name    = "prod"
}