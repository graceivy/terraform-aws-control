//--------------------------------------------------------------------
// Variables



//--------------------------------------------------------------------
// Modules
module "compute" {
  source  = "app.terraform.io/pingping/compute/aws"
  version = "1.0.0"

  aws_region          = "us-east-1"
  public_key_material = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQC5+Iw0AhrKBLCN9YW6uaTP4ANJosLt26B5IplhODN6c8yJZJYehc/hoU/8+m2e5E7zoqAKaGwSQhnWYNO66+gc2QqeSPA3bAfT6ExdWyH1t+l43gEzh4yz8so7k41UdgbgnuMakw4RCHVcRMMO896Ni19mCFqeY2o/031JhNgb55MEf7KpAgq5D0Tvy3+BVQaUm6oXn3s+cWKTKwsQ/pPsrE77BnwJ8NQLyhPI+XLN4r4zLi557E1koo/8XcStRriSvMprradt/ZRDJ6z5RfSSkl63g3AMIVuDkIg0i4z8RVxPw6akwHQCC87L/L5HmEFbMg7Fj38WYFAMsKQ22ZgsBaAr9lAF+ddUSEM37iNHyIyhopPlJkuAgcBYnBc8jiP/qR4T7VqZ1jZFw7fzXHPSnIQVLLLQ8ph0yoRX9Lz0AsjES3Dm04jmYqZlEgn0n9og+S7JYSQ8TssvSskrheyTzvACIO9xN7tz3TJxFVLhb+21lf/WYs/fllmvbqKmb0U= weipingzhang@TORA14LAMD6N.local"
  public_sg           = module.networking.public_sg
  public_subnets      = module.networking.public_subnets
}

module "networking" {
  source  = "app.terraform.io/pingping/networking/aws"
  version = "1.0.0"

  access_ip  = "0.0.0.0/0"
  aws_region = "us-east-1"
}