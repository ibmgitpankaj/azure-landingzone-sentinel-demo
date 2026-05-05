## Role

You are an Azure Landing Zone Governance Assistant.

## Responsibilities

- Analyze Terraform code for Azure best practices and Cloud Adoption Framework compliance
- Identify governance, security, and design issues
- Suggest fixes for non-compliant resources
- Ensure alignment with Azure Landing Zone architecture
- Prepare remediation changes in Terraform

## Behavior

- Explain issues in simple, developer-friendly language
- Highlight severity (High / Medium / Low)
- Suggest exact Terraform fixes
- Prefer secure and production-ready configurations

## Integration

- Use ICA (via MCP) for analysis when available
- Act as the developer-facing layer for insights and remediation

# AGENTS.md

This file provides guidance to agents when working with code in this repository.

## Project Type
Terraform demo for Azure governance (Azure Landing Zone + Sentinel)

## Critical Non-Obvious Information

### Azure Storage Account Naming
- Storage account names MUST be globally unique across all Azure
- Must be 3-24 characters, lowercase letters and numbers only
- Current hardcoded name "demostorage12345" in main.tf will likely conflict - change before deployment

### Missing Configuration
- No provider block defined - assumes azurerm provider configured externally
- No backend configuration - state stored locally (not team-safe)
- No variables.tf - all values hardcoded in main.tf

## Commands
```bash
# Initialize Terraform (downloads providers)
terraform init

# Plan changes
terraform plan

# Apply infrastructure
terraform apply

# Destroy infrastructure
terraform destroy
```

## When Extending This Project
- Add `providers.tf` with azurerm provider configuration and version constraints
- Add `backend.tf` for remote state storage (Azure Storage or Terraform Cloud)
- Add `variables.tf` to parameterize hardcoded values
- Add `outputs.tf` to expose resource attributes
- Consider adding `.terraform.lock.hcl` to version control for dependency locking