resource "aws_ecr_repository" "app_repo" {
  name                 = "${var.environment}-repo"
  image_tag_mutability = "MUTABLE"

  image_scanning_configuration {
    scan_on_push = true
  }
}

output "repository_url" {
  value       = aws_ecr_repository.app_repo.repository_url
  description = "The URL of your ECR repository where Docker images will be pushed"
}