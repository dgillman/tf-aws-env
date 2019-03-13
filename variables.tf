variable "aws_region" {
  description = "Target region for creation of AWS assets"
  default = "us-west-1"
}

variable "aws_credential_file" {
  description = "Local source for TOML-formated AWS credential file"
  type = "string"
  default = ""
}

variable "aws_profile" {
  description = "Profile within var.aws_credential_file to use when accessing AWS"
  default = "default"
}

variable "project" {
  description = "Project name"
  type = "string"
  default = ""
}

variable "client" {
  description = "Client name"
  type = "string"
  default = ""
}

variable "release_phase" {
  description = "Release phase environment supports (eg. 'dev', 'qa', 'staging', 'prod')"
  type = "string"
  default = "dev"
}

variable "additional_tags" {
  description = "Additional tags to add to the output `tags` variable"
  type = "map"
  default = {}
}
