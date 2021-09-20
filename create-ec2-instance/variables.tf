variable "aws_key_pair" {
  default = "/home/lucas/.aws/key_pairs/cmf-iplusd-desa-laj.pem"
}

variable "region" {
  default = "us-east-1"
}

variable "shared_credentials_file" {
  default = "/home/lucas/.aws/credentials"
}

variable "profile" {
  default = "tec_iplusd_desa"
}

variable "key_name" {
  default = "cmf-iplusd-desa-laj"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "vpc_id" {
  default = "vpc-36ffd94c"
}

variable "subnet_id" {
  default = "subnet-e05442bc"
}