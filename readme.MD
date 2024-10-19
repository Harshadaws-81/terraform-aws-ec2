# Terraform AWS EC2

## Arguments
ami_id - (Mandatory) , user must provide AMI Id . This is in string format

instance_type - (Optional) , default is t3.micro

security_group_ids - (Mandatory) , user must provide list of SG Id

## Outputs
public_ip - Public IP of the Instance created

private_ip - Private IP of the Instance created

instance_id - Instance ID of the Instance created