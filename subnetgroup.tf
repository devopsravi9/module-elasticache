resource "aws_elasticache_subnet_group" "main" {
  name       = "${local.TAG_PREFIX}-subnetgroup"
  subnet_ids = var.PRIVATE_SUBNET_ID

  tags = {
    Name = "${local.TAG_PREFIX}-subnetgroup"
  }
}