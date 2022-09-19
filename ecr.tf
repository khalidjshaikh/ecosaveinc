resource "aws_ecr_repository" "ecr" {
  name                  = "nginx"
  image_tag_mutability  = "MUTABLE"
  force_delete          = true
  
  image_scanning_configuration {
    scan_on_push = true
  }
}

resource "aws_ecr_repository" "ecr" {
  name                  = "modsecurity"
  image_tag_mutability  = "MUTABLE"
  force_delete          = true
  
  image_scanning_configuration {
    scan_on_push = true
  }
}