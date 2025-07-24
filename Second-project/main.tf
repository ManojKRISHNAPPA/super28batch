provider "aws" {
  region = "us-east-1"
  access_key = ""
  secret_key = ""
}

resource "aws_instance" "ec2" {
  ami = "ami-020cba7c55df1f615"
  instance_type = "t2.micro"
  security_groups = [ "default" ]
  key_name = "jun26"
  root_block_device {
    volume_size = 20
    volume_type = "gp3"
    delete_on_termination = true
  }
  tags = {
    Name = "Terraform-first-Server"
  }
  user_data = file("jenkins-script.sh")
}

output "PublicIP" {
  value = aws_instance.ec2.public_ip
}


