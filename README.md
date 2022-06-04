# Terraform AWS

The purpose of this repo is to practice creating resource in AWS with Terraform

## Starting Point

- Install [pre-commit](https://pre-commit.com/#install) to use pre-commit hooks in this repo.

## TO-DO

- Document repo design decisions
- Add Github Actions for CI/CD
- Add a pre-commits
- Create a VPC Module
- Add Testing
- Terragrunt for DRY?
- Pre-commits
  - tflint
  - tfdocs
  - terraform-fmt
- Github Actions
  - [Infracost](https://github.com/infracost/infracost)
- Tests
  - Try terratest to build tests for each module.

## Desing Decisions

- I want the project structure to reflect on which specific the environment (dev-stage-prod) the resources are hosted on.
- I will use small tf-state files to reduce the blast radius of potential problems when deploying changes.
- I require environment isolation (Prod-Dev-Stage) so using different states for each will be the way to go.
- I've decided not to use Terrafrom Workspaces as it wasn't easy to figure out to which environment a resource would belong unless you'd run terraform workspace commands.
- I want to keep the code DRY as much as possible by sharing variables across different environments. One of the ways I will achieve this is by using symlinks from time to time.
- As this is a repo for testing, I will use the same backend (S3) but with different paths to store the State files.