# Plan Mode Rules

## Project Architecture Context

### Current Architecture
- Single-file Terraform configuration (main.tf)
- Two Azure resources: Resource Group and Storage Account
- No modular structure or separation of concerns

### Non-Obvious Constraints
- Storage account name must be globally unique across all Azure (current "demostorage12345" will conflict)
- Storage account name cannot be changed after creation without destroying the resource
- No provider configuration - assumes external azurerm provider setup
- No remote state backend - local state only (not team-safe)

### When Planning Changes
- Consider that adding resources requires maintaining resource group reference pattern
- Plan for provider configuration if extending beyond demo scope
- Account for Azure naming constraints when planning new resources
- Consider adding variables.tf, outputs.tf, and backend.tf for production readiness