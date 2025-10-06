variable "project_id"    { type = string }
variable "region"        { type = string  default = "us-central1" }
variable "zone"          { type = string  default = "us-central1-a" }
variable "instance_name" { type = string  default = "miq-demo-vm" }
variable "machine_type"  { type = string  default = "e2-micro" }
variable "gcp_credentials_json" { type = string  sensitive = true }  # paste raw key.json at order time
