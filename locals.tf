locals {
  dft_aws_credential_file = "${pathexpand("~/.aws/credentials")}"
  tags = "${map(
      "Client", "${coalesce(var.client, "None")}",
      "Project", "${coalesce(var.project, "None")}",
      "Release Phase", "${var.release_phase}"
    )}"
  fullname_parts = "${compact(list(var.client, var.project, var.release_phase))}"
}