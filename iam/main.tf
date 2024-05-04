


resource "aws_iam_user" "admin-user" {
  name = "Luka"
  tags = {
    Description = "Team Leader"
  }
}

resource "aws_iam_policy" "adminUsers" {
    name = "AdminUsers"
    policy = file("sdmin-policy.json")

}

resource "aws_iam_user_policy_attachment" "admin-user" {
    user = aws_iam_user.admin-user.name
    policy_arn = aws_iam_policy.adminUsers.arn
  
}