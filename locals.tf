locals {
  dft_aws_credential_file = "${pathexpand("~/.aws/credentials")}"
  tags = "${map(
      "Client", "${coalesce(var.client, "None")}",
      "Project", "${coalesce(var.project, "None")}",
      "Release Phase", "${var.release_phase}"
    )}"
  client_id = "${lower(replace(var.client, " ", "-"))}"
  fullname_parts = "${compact(list(local.client_id, var.project, var.release_phase))}"
}