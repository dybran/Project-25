cluster_name            = "dybran-eks-tooling"
iac-env-tag     = "development"
name_prefix             = "dybran-eks-tooling"
main_network_block      = "10.0.0.0/16"
subnet_prefix_extension = 4
zone_offset             = 8

# Ensure that these users already exist in AWS IAM. Another approach is that you can introduce an iam.tf file to manage users separately, get the data source and interpolate their ARN.
admin_users                    = ["peter", "anthony"]
developer_users                = ["leke", "david"]
asg_instance_types             = [ { instance_type = "t3.xlarge" }, { instance_type = "t2.xlarge" }, ]
autoscaling_minimum_size_by_az = 1
autoscaling_maximum_size_by_az = 10
autoscaling_average_cpu        = 30