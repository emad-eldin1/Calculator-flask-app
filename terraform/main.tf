resource "aws_instance" "ubuntu-instance" {
  count           = 3
  ami             = var.ami
  instance_type   = "t2.micro"
  key_name        = "vockey"
  security_groups = ["${aws_security_group.allow_ssh.name}"]

  #   vpc_security_group_ids = [aws_security_group.allow_ssh.id]

  tags = {
    Name = "Emad-App-${count.index + 1}"
  }
}