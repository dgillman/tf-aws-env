output "project" {
  value = "${var.project}"
}

output "client" {
  value = "${var.client}"
}

output "release_phase" {
  value = "${var.release_phase}"
}

output "tags" {
  value = "${merge(
    local.tags,
    var.additional_tags
  )}"
}

output "projectname" {
  value = "${join("-", local.project_parts)}"
}

output "fullname" {
  value = "${join("-", local.fullname_parts)}"
}
