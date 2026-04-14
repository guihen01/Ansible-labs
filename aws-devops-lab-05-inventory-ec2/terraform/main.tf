resource "aws_instance" "web" {
  count         = 2
  ami           = "ami-020ce4ade5046b3ed"
  instance_type = "t3.micro"

  tags = {
    Name    = "webserver"
    Project = "ansible-lab"
  }
}
