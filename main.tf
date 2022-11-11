resource "aws_instance" "first" {
  ami = "ami-026b57f3c383c2eec"
  instance_type = "t2.micro"
  tags = {
    name = "first"
  }
  key_name = aws_key_pair.demo.id
  vpc_security_group_ids = [ aws_security_group.forssh.id ]

}


resource "aws_key_pair" "demo" {
  public_key = file("public")
}

resource "aws_security_group" "forssh" {
  name = "forssh"
  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = [ "0.0.0.0/0" ]
  }  
}


