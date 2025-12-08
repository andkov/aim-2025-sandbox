# AIM 2025 Sandbox

This project provides a research analytics environment with integrated AI support, memory systems, and reproducible analysis workflows. It combines data analysis capabilities with advanced AI assistance for social science research. This project uses public data on Ukrainian publishing trends sourced from the [Books Chamber of Ukraine](https://ukrbook.net/) and prepared for analysis by [github.com/rg-fides/books-of-ukraine](https://github.com/rg-fides/books-of-ukraine).

## 🧠 **AI-Enhanced Features**

- **Project Memory System**: Separate memory tracks for human decisions and AI technical notes, with summary and detailed views
- **Context Management**: Dynamic AI context loading for specific analytical tasks (i.e. flexible system prompt) 
- **Copilot Integration**: GitHub Copilot optimized for research analytics workflows (e.g. tasks, extensions)


## 📊 **Research Analytics Capabilities**

- **Reproducible Workflows**: Scripted analysis pipelines with version control
- **Template System**: Pre-built templates for common research tasks
- **Documentation Integration**: Seamless integration of analysis and documentation
- **Multi-Format Output**: Reports in various formats (HTML, PDF, etc.)

## 🚀 **Getting Started**

1. **Setup**: Install VS Code and activate Copilot
2. **Fork Repository**: [github.com/andriy.koval/aim-2025-sandbox](https://github.com/andriy.koval/aim-2025-sandbox)
3. **Environment**: Work with AI agent to install dependencies
4. **Explore project**: Request project briefing from Copilot
5. **Analysis**: Open [`analysis/eda-1/eda-1.R`](analysis/eda-1/eda-1.R) and start exploring the data with AI assistancenced Research Analytics


## 🎯 **For Researchers**

5. **Analysis**: Open ./analysis/eda-1.R and start exploring the data with AI assistance.

**Database Access**: Two-stage database system with prepared data from books-of-ukraine project:
- `connect_books_db("main")` - Final analytical database (analysis-ready)  
- `connect_books_db("stage_2")` - Books + admin + custom data

**Quick Start**: Run `Rscript scripts/test-database-connection.R` to verify database access

> Hint: Ask Project Manager to check the setup.

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
