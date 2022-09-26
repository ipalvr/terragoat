resource azurerm_kubernetes_cluster "k8s_cluster" {
  dns_prefix          = "terragoat-${var.environment}"
  location            = var.location
  name                = "terragoat-aks-${var.environment}"
  resource_group_name = azurerm_resource_group.example.name
  identity {
    type = "SystemAssigned"
  }
  default_node_pool {
    name       = "default"
    vm_size    = "Standard_D2_v2"
    node_count = 6
  }
  addon_profile {
    oms_agent {
      enabled = false
    }
    kube_dashboard {
      enabled = true
    }
  }
  role_based_access_control {
    enabled = false
  }
  tags = {
    git_commit           = "667e53ce03f357a393b224dc7afa476e8b60f0a9"
    git_file             = "terraform/azure/aks.tf"
    git_last_modified_at = "2022-09-26 15:27:15"
    git_last_modified_by = "mweibeler@gmail.com"
    git_modifiers        = "mweibeler/nimrodkor"
    git_org              = "ipalvr"
    git_repo             = "terragoat"
    yor_trace            = "6103d111-864e-42e5-899c-1864de281fd1"
  }
}
