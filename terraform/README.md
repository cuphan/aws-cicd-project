Terraform will create

* CodeCommit: Essentially a container of Git repositories.
* Codestar-Connection for GitHub
* CodeBuild: The core of CI, which compiles source code, integrates the binaries, and tests the validity of the application. This component is not needed for our Python application deployment pipeline.
* CodeDeploy: The core of CD, which moves the application and its asset to the computing environment, carries out actions according to the application specifications in response to environmental events.
* EC2: The computing instances for running the application.
* CodePipeline: The overarching component that drives the above components in a coordinated manner.
* AWS CloudWatch: Used by CodePipeline to report issues to the cloud user.
* AWS IAM: Required for generating security credentials for AWS CLI command tools and seeking permissions for using the components.

https://medium.com/@andrewlui_60044/deploy-a-python-application-on-a-aws-ci-cd-pipeline-part-1-code-repository-1090ff888eaa
https://purnimachowrasia.medium.com/ci-cd-of-flask-application-using-aws-codebuild-codedeploy-and-codepipeline-part-1-9cd513fde786
