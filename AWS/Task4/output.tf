output "user_name" {
  value = [
  "${aws_iam_user.ben.name}",
  "${aws_iam_user.bob.name}",
  "${aws_iam_user.tim.name}"
  ]
}

output "group_name" {
  value = [
  "${aws_iam_group.developers.name}",
  "${aws_iam_group.managements.name}"
  ]
}