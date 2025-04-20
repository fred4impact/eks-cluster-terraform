locals {
  env           = "Dev"
  region        = "us-east-1"
  zone1         = "us-east-1a"
  zone2         = "us-east-1b"
  eks_name      = "Bilarn"
  eks_version   = "1.29"
  profile       = "eks-admin"
  cidr_block    = "10.0.0.0/16"
  key_pair_name = "eks-cluster"
  instance_type = "t2.micro"
  server_name   = "Bastion server"
  my_ip         = ""
}
