`./scripts/` Directory
=========

Contains collections of scripts aimed at anticipating standard needs during analytic and publishing work flow.

## Directory Structure

### `./ps1/` - PowerShell Workflow Scripts
PowerShell scripts for workflow automation that assume the project is already set up.
- **Organization Principle**: Workflow `.ps1` files go here; bootstrapping scripts stay in project root
- **Standards**: ASCII-only (no emojis/Unicode) - see `ai/personas/developer.md` → "PowerShell Scripting Standards"
- **Current Scripts**: `run-complete-ellis-pipeline.ps1`

### `./wrappers/` - Script Wrappers
Small wrapper scripts that bridge VS Code tasks with main project scripts.
- **Purpose**: Avoid PowerShell quoting issues and provide clean task entry points
- **Contents**: Minimal R/Python wrappers for automation
- **Documentation**: See `./wrappers/README.md` for details

## Key Scripts

All AI-related scripts have been moved to `ai/scripts/` for better organization.

### Core Analysis Scripts
- `common-functions.R` - Shared utility functions for data analysis
- `silent-mini-eda.R` - Lightweight exploratory data analysis
- `verify-data-access.R` - Database connection verification

### Specialized Scripts
- `check-setup.R` - Environment and dependency validation  
- `test-database-connection.R` - Database connectivity testing

### Other Important Scripts
- `google-auth-helper.R` - Google Sheets authentication
- `setup-google-auth.R` - Initial authentication setup
- `common-functions.R` - Shared utility functions 
