variable "resource-group-name" {
  description = "Resource Group Name"
  type        = string
}

variable "app-service-plan-name" {
  description = "App service plan Name"
  type        = string
}

variable "app-service-name" {
  type        = string
}

variable "location" {
  description = "resource location"
  type        = string
}

variable "sku-tier" {
  type = string
 
}
variable "sku-size" {
  type = string
 
}

# variable "sku" {
#     type = object({
#         tier = string
#         size = string
#     })
# }

# variable "user_information" {
#   type = object({
#     name    = string
#     address = string
#   })
#   sensitive = true
# }