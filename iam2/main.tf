resource "aws_iam_user" "not_admin" {
    name = "Jude"
    tags = {
      Description = "Best out there"
    }
  
}

resource "aws_iam_policy" "not-admin-users" {
  name = "not_admin_user"
  policy = file("not-admin.json")
}

resource "aws_iam_user_policy_attachment" "not-admin" {
    user = aws_iam_user.not_admin.name
    policy_arn = aws_iam_policy.not-admin-users.arn
}
