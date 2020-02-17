resource "aws_key_pair" "mykeypair" {
  key_name   = "mynodekeypair"
  public_key = file(var.PATH_TO_PUBLIC_KEY)
  lifecycle {
    ignore_changes = [public_key]
  }
  tags = {
    Name = "mynodekeypair"
    "Project Name" = var.AWS_PROJECT_NAME
  }
}
