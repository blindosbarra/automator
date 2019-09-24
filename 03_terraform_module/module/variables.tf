variable "name" {
  type    = "string"
  default = "tf"
}

variable "project_id" {
  type    = "string"
}

variable "region" {
  type    = "string"
  default = "europe-west1"
}

variable "zone" {
  type    = "string"
  default = "europe-west1-b"
}

variable "machine_type" { 
  type    = "string"
  default = "f1-micro"
}

variable "network" {
  type    = "string"
  default = "default"
}

variable "os" {
  type    = "string"
  default = "debian-cloud/debian-9"
}

variable "allow_stopping_for_update" {
  type    = "string"
  default = true
}

variable "tags" {
  type    = "list"
  default = ["terraform"] 
}