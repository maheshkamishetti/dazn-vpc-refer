resource "aws_ssm_parameter" "vpc_id" {
    name = "/${var.project_name}/${var.environment}/vpc_id"
    type = "String"
    value = module.dazn.vpc_id
}

resource "aws_ssm_parameter" "public_subnet_ids" {
    name = "/${var.project_name}/${var.environment}/public_subnet_ids"
    type = "StringList"
    value = join(",", module.dazn.public_subnet_ids)
}

resource "aws_ssm_parameter" "private_subnet_ids" {
    name = "/${var.project_name}/${var.environment}/private_subnet_ids"
    type = "StringList"
    value = join(",", module.dazn.private_subnet_ids)
}

# resource "aws_ssm_parameter" "public_subnet_ids" {
#     name = "/live streaming/dev/public_subnet_ids"
#     type = "StringList"
#     value = join(",", module.dazn.public_subnet_ids)
# }
