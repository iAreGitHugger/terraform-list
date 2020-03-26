

variable "list_set" {
  set_type = string
  source   = string
  type = list(object({
  }))

}

variable "b" {
  type = string

}
variable name {
  type = string
}

variable request_payer {
  type    = string
  default = "BucketOwner"
}

variable enable_lifecycle {
  type    = string
  default = "true"
}

variable enable_versioning {
  type    = bool
  default = false
}

variable "logging" {
  type    = list(map(string))
  default = []
}

variable allow_read {
  type    = list(string)
  default = []
}

variable allow_write {
  type    = list(string)
  default = []
}

variable "force_destroy" {
  type    = bool
  default = false
}


variable allow_ipaddr {
  type = list(string)

  default = [
    "0.0.0.0/0",
  ]
}

variable override_policy {
  default = {}
}

variable standard_transition_days {
  type    = string
  default = "30"
}

variable glacier_transition_days {
  type    = string
  default = "60"
}

//variable "expiration" {
//  type = string
//  default = "90"
//}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "Additional tags (e.g. `map('BusinessUnit','XYZ')`"
}

variable "sqs_notification" {
  type    = bool
  default = false
}

variable "enable_sse" {
  type    = bool
  default = false
}

variable "enabled" {
  type    = bool
  default = true
}

variable "kms_master_key_id" {
  type    = string
  default = ""
}

# https://docs.aws.amazon.com/AmazonS3/latest/dev/acl-overview.html#canned-acl
variable "bucket_acl" {
  type    = string
  default = "private"
}

variable "bucket_owner_full_control" {
  type    = bool
  default = true
}

variable "namespace" {
  type        = string
  default     = ""
  description = "Namespace, which could be your organization name or abbreviation, e.g. 'eg' or 'cp'"
}

variable "environment" {
  type        = string
  default     = ""
  description = "Environment, e.g. 'prod', 'staging', 'dev', 'pre-prod', 'UAT'"
}

variable "stage" {
  type        = string
  default     = ""
  description = "Stage, e.g. 'prod', 'staging', 'dev', OR 'source', 'build', 'test', 'deploy', 'release'"
}

variable "delimiter" {
  type        = string
  default     = "-"
  description = "Delimiter to be used between `namespace`, `environment`, `stage`, `name` and `attributes`"
}

variable "attributes" {
  type        = list(string)
  default     = []
  description = "Additional attributes (e.g. `1`)"
}

variable "cloudtrail" {
  type    = bool
  default = false
}