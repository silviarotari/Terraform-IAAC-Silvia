// Adding IAM Users
resource "aws_iam_user" "ben" { 
   name = "ben" 
   path = "/" 
} 

resource "aws_iam_user" "bob" { 
   name = "bob" 
   path = "/" 
} 

resource "aws_iam_user" "tim" { 
   name = "tim" 
   path = "/" 
} 


// Adding IAM Groups
resource "aws_iam_group" "developers" { 
    name = "developers" 
    path = "/" 
} 

resource "aws_iam_group" "managements" { 
    name = "managements" 
    path = "/" 
}


// Adding Users to a Group
resource "aws_iam_group_membership" "developers_team" { 
  name = "developers-group-membership" 
  users = [ 
    "${aws_iam_user.ben.name}",
    "${aws_iam_user.bob.name}",
    "${aws_iam_user.tim.name}" 
  ] 
  group = "${aws_iam_group.developers.name}" 
} 

resource "aws_iam_group_membership" "managements_team" { 
  name = "managements-group-membership" 
  users = [ 
    "${aws_iam_user.ben.name}"
  ] 
  group = "${aws_iam_group.managements.name}" 
} 