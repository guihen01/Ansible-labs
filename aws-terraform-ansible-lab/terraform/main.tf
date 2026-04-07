provider "aws" {
  region = "ca-central-1"
}

resource "aws_key_pair" "ansible" {
  key_name   = "ansible-key"
  public_key = file("ansible-key.pub")
}

resource "aws_security_group" "ssh" {
  name = "ansible-sg"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

#subnet dans un VPC 
# recuperer le id dun subnet existant ds AWS
#-----------------------------------------------------
data "aws_subnet" "selected" {
  id = "subnet-04ab7f22ddced88f9"
}


data "aws_ami" "amazon_linux" {
  most_recent = true

  owners = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm-*-x86_64-gp2"]
  }
}

# creation de l'instance EC2
#----------------------------------------------------
resource "aws_instance" "ec2" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = "t3.micro"

  subnet_id = data.aws_subnet.selected.id

  key_name               = aws_key_pair.ansible.key_name
  vpc_security_group_ids = [aws_security_group.ssh.id]

  tags = {
    Name = "ansible-lab"
  }
}


output "public_ip" {
  value = aws_instance.ec2.public_ip
}