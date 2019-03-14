module "env" {
  source = "../../"

  client="Acme Inc"
  project="testproject"
  release_phase="prod"
  additional_tags = {
    tag1 = "value1"
    tag2 = "value2"
  }
}
