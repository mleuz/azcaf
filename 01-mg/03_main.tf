# Management Group erstellen
resource "azurerm_management_group" "mg-mleu-ag" {
  name                       = "1e090490-2dc3-4927-9ec9-e5ac20c29398"
  display_name               = "mg-mleu-ag"
  parent_management_group_id = "/providers/Microsoft.Management/managementGroups/b109fcb2-65b1-4676-ba01-57c2ab509d59"
}
resource "azurerm_management_group" "mg-plattform" {
  name                       = "5f30de69-1109-44b0-aa66-ce555cee2283"
  display_name               = "mg-plattform"
  parent_management_group_id = "/providers/Microsoft.Management/managementGroups/1e090490-2dc3-4927-9ec9-e5ac20c29398"
}

resource "azurerm_management_group" "mg-connectivity" {
  name                       = "696ecade-863b-4709-af2a-2f77986cf483"
  display_name               = "mg-connectivity"
  parent_management_group_id = "/providers/Microsoft.Management/managementGroups/5f30de69-1109-44b0-aa66-ce555cee2283"
}

resource "azurerm_management_group" "mg-Identity" {
  name                       = "c964600f-3656-48d4-8f00-260578f4a97e"
  display_name               = "mg-Identity"
  parent_management_group_id = "/providers/Microsoft.Management/managementGroups/5f30de69-1109-44b0-aa66-ce555cee2283"
}

resource "azurerm_management_group" "mg-management" {
  name                       = "3f5826ca-b1e6-438c-ae7e-25a301f7019d"
  display_name               = "mg-management"
  parent_management_group_id = "/providers/Microsoft.Management/managementGroups/5f30de69-1109-44b0-aa66-ce555cee2283"
}

resource "azurerm_management_group" "mg-landingzones" {
  name                       = "5e8c2fd3-74c3-4095-9c3f-66e3409f44ce"
  display_name               = "mg-landingzones"
  parent_management_group_id = "/providers/Microsoft.Management/managementGroups/1e090490-2dc3-4927-9ec9-e5ac20c29398"
}

# ---------------
# az account management-group list --output table 
# Terraform init
# Terraform fmt
# Terraform plan
# Terraform apply , Yes
# Terraform destroy
# ---------------
# resource "azurerm_management_group" "mg-plattform" {
# mit GUID Generator erstellt, bleit auch beim umbenennen immer gleich
# name = "5f30de69-1109-44b0-aa66-ce555cee2283"
# display_name = "mg-plattform"
# Falls die Management Group unter einer anderen MG platziert werden soll
# parent_management_group_id = "/providers/Microsoft.Management/managementGroups/root-management-group"
# service Proncipal muss owner der Teanan Root Group sein 
# parent_management_group_id = "/providers/Microsoft.Management/managementGroups/1e090490-2dc3-4927-9ec9-e5ac20c29398"
# }
