resource "aws_iam_role" "test_role" {
  name = "iam_role_0608"
assume_role_policy = file("./scripts/assume_role.json")
tags = {
    tag-key = "demo-role-0608"
  }
}

