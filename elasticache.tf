resource "aws_elasticache_cluster" "main" {
  cluster_id           = local.TAG_PREFIX
  engine               = var.ELASTICACHE_ENGINE
  node_type            = var.ELASTICACHE_INSTANCE_CLASS
  num_cache_nodes      = var.ELASTICACHE_INSTANCE_COUNT
  engine_version       = var.ELASTICACHE_ENGINE_VERSION
  port                 = var.ELASTICACHE_PORT
  parameter_group_name = aws_elasticache_parameter_group.main.name
  security_group_ids   = [aws_security_group.main.id]
  subnet_group_name    = aws_elasticache_subnet_group.main.name
}