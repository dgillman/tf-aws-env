output "project" {
  value = "${var.project}"
}

output "client" {
  value = "${var.client}"
}

output "release_phase" {
  value = "${var.release_phase}"
}

# produces tags that should be applied to all resources for this project
output "tags" {
  value = "${merge(
    local.tags,
    var.additional_tags
  )}"
}

# produces the project name (just client and project)
output "projectname" {
  value = "${join("-", local.project_parts)}"
}

# produces the full environment name (client, project, and release phase)
output "fullname" {
  value = "${join("-", local.fullname_parts)}"
}
