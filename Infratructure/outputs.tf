output "vpc_id" {
  description = "ID của VPC đã tạo"
  value       = module.vpc.vpc_id
}

output "public_subnet_ids" {
  description = "Danh sách ID của các subnet công khai"
  value       = module.vpc.public_subnets
}
