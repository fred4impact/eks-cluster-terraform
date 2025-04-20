resource "aws_instance" "jumpbox" {
  ami                         = data.aws_ami.ubuntu.id
  instance_type               = local.instance_type
  subnet_id                   = aws_subnet.public-subnet[0].id
  associate_public_ip_address = true
  key_name                    = local.key_pair_name
  vpc_security_group_ids      = [aws_security_group.jumpbox_sg.id]

  tags = {
    Name = "${local.env}-${local.server_name}"
  }
}
