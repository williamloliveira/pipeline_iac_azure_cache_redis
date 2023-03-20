variable "rg" {
    description = "Resource Group que será criado|utilizado na criação dos recursos de banco de dados"
}

variable "regiao" {
    description = "Região ao qual os recursos serão criados"
}

variable "ambiente" {
    type = map
    default = {
        d = "dev",
        h = "hml",
        p = "prd"
    }
}

variable "env" {
    default = "d"

    validation {
        condition = contains(["d","h","p"],var.env)
        error_message = "Argument 'env' must be either 'd' (dev), 'h' (hml) or 'p' (prd)"
    }
}

variable "nome_sistema" {
    description = "Nome do sistema ao qual os recursos serão destinados"
}

variable "tamanho_servidor" {
    description = "Especifica o tipo de perfil do servidor de cache Redis que será criado. Valores possíveis: Basic, Standard e Premium"
    default = {
        d = "Basic",
        h = "Standard",
        p = "Premium"
    }
}

variable "capacidade_servidor" {
    description = "Tamanho do servidor cache Redis. Valores validos baseado na variavel tamanho_servidor: C (Basic/Standard) are 0, 1, 2, 3, 4, 5, 6, and for P (Premium) family are 1, 2, 3, 4, 5."
    default = 1
}

variable "versao_redis" {
    description = "Versão do Redis que será utilizado, por padrão será a mais recente disponivel neste momento: 6"
    default = "6"
}
