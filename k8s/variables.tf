variable "aws_access_key" {
  default = null
}
variable "aws_secret_key" {
  default = null
}
variable "application_key" {
  default = null
}
variable "application_secret" {
  default = null
}
variable "consumer_key" {
  default = null
}
variable "region" {
  type        = string
  default     = "us-west-2"
  description = "AWS region"
}
variable "cluster_name" {
  type    = string
  default = "arvato-cluster"
}
variable "kubernetes_version" {
  type    = string
  default = "1.21"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  default = "10.0.16.0/20"
}
variable "private_subnet_cidr" {
  default = "10.0.0.0/20"
}
variable "desired_capacity" {
  default = 3
}
variable "worker_instance_type" {
  default = "t3.micro"
}
variable "ingress" {
  type    = string
  default = "https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.0.4/deploy/static/provider/aws/deploy.yaml"
}
variable "app_name" {
  default = "pawapay"

}
variable "service_name" {
  default = "pawapay"
}
variable "default_namespace" {
  default = "pawapay"

}
variable "service_type" {
  default = "ClusterIP"
}
variable "image" {
  default = "nasri/pawapay"
}
variable "containerport" {
  default = [{
    name          = "web-cn"
    internal_port = "3001"
    host_port     = "80"


    }
  ]
}
# variable "ports" {
#   default = "8080"
# }

variable "service_ports" {
  default = [{
    name          = "web"
    internal_port = "3001"
    external_port = "80"
    }
  ]

}
variable "domain_name" {
  default = {

    zone      = "nasri.it"
    subdomain = "pawapay"
    fqdn      = "pawapay.nasri.it"

  }
}
