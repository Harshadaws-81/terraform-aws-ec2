# Mandatory , user should supply
variable "ami_id" {
  type = string
  #default     = "ami-09c813fb71547fc4f"
}

# Optional , default value is t3.micro , User can always override
# t3.micro , t3.small , t3.medium
variable "instance_type" {
  default = "t3.micro"
  type    = string
  validation {
    condition     = contains(["t3.micro", "t3.medium", "t3.small"], var.instance_type)
    error_message = "instance_type can only be one of t3.micro , t3.medium , t3.small"
  }
}

# Mandatory , user should supply
variable "security_group_ids" {
  type = list(string)
  #default = ["sg-048c74456592b8877"]
}

variable "instance_names" {
  type = list(string)
  #default = ["mysql" , "backend" , "frontend"]
}

