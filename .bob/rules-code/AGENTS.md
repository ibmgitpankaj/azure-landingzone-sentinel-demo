# Code Mode Rules

## Terraform-Specific Patterns

### Resource Naming
- Azure storage account names must be globally unique (3-24 lowercase alphanumeric chars)
- Current hardcoded "demostorage12345" will likely conflict - generate unique names

### Missing Infrastructure
- No provider configuration exists - azurerm provider must be configured externally
- No backend configuration - state is local only (not suitable for teams)
- All values hardcoded in main.tf - no variables defined

### When Making Changes
- If adding resources, maintain the pattern of referencing resource group via `azurerm_resource_group.rg`
- Storage account names cannot be changed after creation without destroying the resource
- Consider adding provider version constraints when creating providers.tf