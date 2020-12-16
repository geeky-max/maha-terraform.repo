resource "aws_instance" "mahaawsserver" {
  ami = "ami-0603cbe34fd08cb81"
  instance_type = "t2.micro"

  tags = {
    Name = "hcltech-aws-maha-instance"
    Env = "Prod"
    Name = "Test-Tags"
    Env = "Pre-Prod"
  }
}

output "mahaawsserver-ip" {
  value = "${aws_instance.mahaawsserver.public_ip}"
}

