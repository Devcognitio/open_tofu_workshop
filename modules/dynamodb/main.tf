resource "aws_dynamodb_table" "estudiantes" {
  name           = "Estudiantes"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "student_id"

  attribute {
    name = "student_id"
    type = "S"
  }

  tags = {
    Name = "Estudiantes"
  }
}

resource "aws_dynamodb_table" "maestros" {
  name           = "Maestros"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "teacher_id"

  attribute {
    name = "teacher_id"
    type = "S"
  }

  tags = {
    Name = "Maestros"
  }
}