resource "aws_codedeploy_app" "main" {
  name             = "${local.project}-application"
  compute_platform = "Server"
}
