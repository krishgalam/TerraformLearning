module "MyVirtualMachine"{
    source = "../Module/REsourceGroup"
    resource-group-name = "demo-resources-dev"
    app-service-plan-name = "demo-appserviceplan-hari"
    app-service-name = "demo-app-service-hari"
    location = "West Europe"
    sku-tier = "standard"
    sku-size = "S1"
}