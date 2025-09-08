# AIM 2025 Sandbox - AI-Enhanced Research Analytics

This project provides a research analytics environment with integrated AI support, memory systems, and reproducible analysis workflows. It combines data analysis capabilities with advanced AI assistance for social science research.

## 🧠 **AI-Enhanced Features**

- **Project Memory System**: Persistent knowledge graph for research insights and decisions
- **Context Management**: Dynamic AI context loading for specific analytical tasks  
- **Copilot Integration**: GitHub Copilot optimized for research analytics workflows
- **Multi-Modal Analysis**: Support for various data types and analytical approaches

## 📊 **Research Analytics Capabilities**

- **Reproducible Workflows**: Scripted analysis pipelines with version control
- **Template System**: Pre-built templates for common research tasks
- **Documentation Integration**: Seamless integration of analysis and documentation
- **Multi-Format Output**: Reports in various formats (HTML, PDF, etc.)

## � **Getting Started**

1. **Setup**: Ensure R and required packages are installed
2. **Data**: Place your data in `data-private/` directory
3. **Analysis**: Use templates in `analysis/` directory  
4. **AI Support**: Leverage the memory system and context management tools

## 🎯 **For Researchers**

**Database Access**: Four-stage database system with prepared data from books-of-ukraine project:
- `connect_books_db("main")` - Final analytical database (analysis-ready)  
- `connect_books_db("stage_0")` - Core books data only
- `connect_books_db("stage_1")` - Books + Ukrainian administrative data
- `connect_books_db("stage_2")` - Books + admin + custom data

**Quick Start**: Run `Rscript scripts/test-database-connection.R` to verify database access

**Analysis Templates**: Ready-to-use templates in `analysis/` directory  
**AI Memory System**: Use `ai/memory-hub.md` to manage research insights  
**Context Management**: Dynamic AI assistance via the `./ai/` system  
**Documentation**: Comprehensive guides in `guides/` directory

---

## ⚠️ PowerShell tasks and Execution Policy

Some development tasks in `.vscode/tasks.json` invoke PowerShell scripts. To allow these to run on machines with restricted PowerShell execution policy, the tasks include the flags `-ExecutionPolicy Bypass -NoProfile` when invoking PowerShell. This does not change the system's execution policy; it only instructs the PowerShell process started by VS Code to bypass the policy for that run.

If you prefer to change your user execution policy permanently instead, run PowerShell as Administrator and set:

```powershell
Set-ExecutionPolicy -Scope CurrentUser -ExecutionPolicy RemoteSigned
```

Only do that if you understand the security implications. The current task approach is minimally invasive and safe for development workflows.
