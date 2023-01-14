resource "aws_instance" "ec2_1" {
  ami           = "ami-0cca134ec43cf708f"
  instance_type = "t2.micro"
  subnet_id     = data.aws_subnet.selected.id
  key_name = var.my_key
  tags = {
    Name = "HelloWorld"
  }
}
