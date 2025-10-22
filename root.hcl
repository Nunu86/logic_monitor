terraform {
  extra_arguments "aws_provider" {
    commands = ["plan", "apply", "destroy"]
    arguments = [
      "-var", "aws_region=us-east-1"
    ]
  }
}
