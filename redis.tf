resource "azurerm_redis_cache" "redis_cache_db" {
  name                = "rediscachedb-${var.nome_sistema}-${local.ambiente}"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  redis_version       = var.versao_redis  
  capacity            = var.capacidade_servidor
  family              = local.server_family
  sku_name            = local.server_sku_name
  enable_non_ssl_port = false
  minimum_tls_version = "1.2"

  redis_configuration {
  }

  tags = merge(local.tags)
}