output "azure_cache_redis_id" {
    value = azurerm_redis_cache.redis_cache_db.id
}

output "azure_cache_redis_hostname" {
    value = azurerm_redis_cache.redis_cache_db.hostname
}