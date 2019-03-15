# Terraform Environment Module (tf-env)

This module defines a common set of Terraform variables and resources that will be common across an environment. An environment is a shared set of AWS resources that are treated administratively the same. It should support all of the resources for a specific release lifecycle phase of a specific project.

To use this module, include a file (eg. `env.tf`) in your project
with the content:
```
module "env" {
  source = "github.com/dgillman/tf-env"
}
```

When you create new resources you can access output variables using the prefix `module.env.` followed by the variable name. The output variables which will be available are described below.

## Output Variables

variable | type | description
---------|------|------------
client | string | name of the client (empty if not supplied)
project | string | name of the project (empty if not supplied)
release_phase | string | name of the release phase (empty if not supplied)
projectname | string | just the client and project parts (ie. the name of project across environments)
fullname | string | full name for environment comprised of the previous three variables separated by `_` (eg. `dev`, `acmecorp_webproject_stage`)
tags | map | tags to apply to all AWS resources. Includes client, project, release phase, environment (fullname), and any values supplied in `additional_tags`

## Input Variables

variable | type | default | required | description
---------|------|---------|----------|------------
aws_profile | string | "default" | no | Profile name from AWS credentials file
project | string | | no | Project this environment supports
client | string | | no | Client this environment supports
release_phase | string | | "dev" | Phase in the release lifecycle (eg. 'dev', 'qa', 'stage', 'prod')
additional_tags | map | | no | Additional Tags that should be appended to all assets in this environment

## Testing
1. Ensure Ruby (>=2.3.1) and bundler are installed

2. Install ruby dependencies
```
bundle install
```

3. Build test resources
```
cd test/test-env
terraform init
terraform apply
```

4. Run tests (from same directory as above)
```
bundle exec rspec
```

## Known Issues
- use of terraform-kitchen would be preferable, but this project (so far) creates no remote resources, so does not fit well with terraform-kitchen's assumption that testing will be run on remote resources

## To Do
- automate testing with CircleCI, or at least locally with `make`
