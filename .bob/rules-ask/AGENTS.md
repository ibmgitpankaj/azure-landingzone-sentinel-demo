# Ask Mode Rules

## Project Documentation Context

### Project Structure
- Minimal Terraform demo with only main.tf and README.md
- No separate documentation beyond README
- All infrastructure defined in single main.tf file

### Non-Obvious Information
- Storage account name "demostorage12345" is hardcoded and will likely conflict (must be globally unique)
- No provider configuration - assumes azurerm provider configured externally
- No backend configuration - state management is local only
- No variables, outputs, or modular structure

### When Answering Questions
- Clarify that this is a minimal demo, not production-ready infrastructure
- Explain missing Terraform best practices (variables, outputs, remote state, provider config)
- Reference Azure-specific constraints (storage account naming, resource group dependencies)