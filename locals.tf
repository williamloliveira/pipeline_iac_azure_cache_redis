locals {
    ambiente                = lookup(var.ambiente,var.env)
    server_sku_name         = lookup(var.tamanho_servidor,var.env)
    server_family           = local.server_sku_name == "Premium" ? "P" : "C"
    
    tags = {
        env         = var.env
        ambiente    = local.ambiente
        sistema     = var.nome_sistema
    }
}