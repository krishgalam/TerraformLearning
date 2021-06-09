https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/subnet

terraform init
will get plugins for that given provider in our case azure related plugins

1. Configuration files
    main.tf, ec2.tf, sg.tf etc


2 .Variable files
    variables.tf

3. Terraform variables
    prod.tfvars, dev.tfvars, test.tfvars etc

    terraform apply --var-file test.tfvars
    terraform apply --var-file dev.tfvars

4. Outputs

5. Modules
