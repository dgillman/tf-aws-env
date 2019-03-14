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
