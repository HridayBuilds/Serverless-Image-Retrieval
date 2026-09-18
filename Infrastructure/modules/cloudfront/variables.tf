variable "name_prefix" {
  description = "Prefix applied to this distribution's AWS-visible name, matching T-06's naming convention"
  type        = string
  default     = "glimpses"
}

variable "photos_bucket_name" {
  description = "Name of the shared glimpses-photos-712906641804 bucket (T-09), this distribution's origin"
  type        = string
}

variable "photos_bucket_arn" {
  description = "ARN of the shared glimpses-photos-712906641804 bucket, for the OAC bucket policy grant"
  type        = string
}

variable "photos_bucket_regional_domain_name" {
  description = "Regional domain name of the shared glimpses-photos-712906641804 bucket, for the CloudFront origin"
  type        = string
}
