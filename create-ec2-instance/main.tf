provider "aws" {
  region  = var.region
  shared_credentials_file = var.shared_credentials_file
  profile = var.profile
}

resource "aws_security_group" "poc_patch_manager_sg" {
  name = "poc_patch_manager_sg"
  vpc_id = var.vpc_id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = -1
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    name = "poc_patch_manager_sg"
  }
}

resource "aws_instance" "poc-patch-manager" {
  ami                    = data.aws_ami.aws_linux_2_latest.id
  key_name               = var.key_name
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.poc_patch_manager_sg.id]
  subnet_id = var.subnet_id

  connection {
    type        = "ssh"
    host        = self.public_ip
    user        = "ec2-user"
    private_key = file(var.aws_key_pair)
  }

}