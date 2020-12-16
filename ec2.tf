resource "aws_instance" "mahaawsserver" {
  ami = "ami-03d64741867e7bb94"
  instance_type = "t2.micro"
  key_name = "hcl-maha"

  tags = {
    Name = "maha-hcltech-aws-ansible-instance"
    Env = "Prod"
     }
provisioner "local-exec" {
    command = "echo The servers IP address is ${self.public_ip} && echo ${self.public_ip} > /root/inventory"
  }
}
output "mahaawsserver-ip" {
  value = "${aws_instance.mahaawsserver.public_ip}"
}

