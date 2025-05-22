resource "aws_instance" "jumpbox" {
  ami                         = data.aws_ami.ubuntu_ami.id
  instance_type               = local.instance_type
  subnet_id                   = aws_subnet.public_zone1.id
  availability_zone           = aws_subnet.public_zone1.availability_zone
  associate_public_ip_address = true
  key_name                    = local.key_pair_name
  vpc_security_group_ids      = [aws_security_group.jumpbox_sg.id]

  tags = {
    Name = "${local.env}-${local.server_name}"
  }
}
