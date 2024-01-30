output "codecommit_repository" {
  value = [aws_codecommit_repository.repos.id,
           aws_codecommit_repository.repos.arn,
           aws_codecommit_repository.repos.clone_url_http,
           aws_codecommit_repository.repos.clone_url_ssh]
}
