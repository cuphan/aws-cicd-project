resource "aws_codecommit_repository" "repos" {
  repository_name = "${local.project}-repos"
  description     = "This is the ${local.project} App Repository"
}
