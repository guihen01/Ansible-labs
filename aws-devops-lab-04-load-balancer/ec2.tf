resource "aws_instance" "web" {
  count         = 2
  ami           = data.aws_ami.amazon_linux.id
  instance_type = var.instance_type

  subnet_id = data.aws_subnets.default.ids[count.index]

  associate_public_ip_address = true   # 👈 IMPORTANT

  vpc_security_group_ids = [aws_security_group.web_sg.id]

  key_name = var.key_name

  tags = {
    Name = "web-${count.index + 1}"
  }
}