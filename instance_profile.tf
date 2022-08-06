//This is going to create IAM role but we can’t link this role to AWS instance 
//and for that, we need EC2 instance Profile



resource "aws_iam_instance_profile" "test_profile" {
  name = "instance_profile"
  role = aws_iam_role.test_role.name
}


