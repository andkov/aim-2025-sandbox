# AI Support System - Books of Ukraine Project

**Modern AI-augmented research infrastructure for Ukrainian publishing analysis**

## Overview

This system provides a modular AI support infrastructure designed for this mixed-language research repository (R, Quarto, etc.). It implements the FIDES (Framework for Interpretive Dialogue and Epistemic Symbiosis) framework for human-AI collaborative data analysis, where the human serves as **philosopher–scientist** and the AI functions as a **modal translator and analytic executor**.

## Architecture Principles

- **Storage/Logic Separation**: Memory artifacts remain project-specific; memory logic is portable
- **Minimal Target Disruption**: Light integration with existing `config.yml`, `flow.R`, and VSCode configurations  
- **Component Modularity**: Organized into specialized directories for different AI support functions

## Core Components

### 1. Persona System 🎭
**Location**: `personas/`  
**Priority**: Highest  

Specialized AI personas for different research roles:
- `developer.md` - Backend systems and reproducible infrastructure
- `project-manager.md` - Strategic oversight and coordination  
- `data-engineer.md` - Data pipeline architecture
- `research-scientist.md` - Scientific methodology and analysis
- `grapher.md` - Data visualization specialist
- `reporter.md` - Report writing and documentation
- And more specialized personas...

**Integration Points**:
- `.github/copilot-instructions.md` (dynamic context switching)
- `.copilot-persona` (active persona tracking)
- VSCode tasks for persona activation

### 2. Context Management 🔄
**Location**: `core/`  
**Priority**: High  

Dynamic AI context management system:
- Automatic persona switching via `dynamic-context-builder.R`
- Context status monitoring and validation
- GitHub Copilot instruction updates with file mapping
- Cross-session context preservation

**Key Files**:
- `base-instructions.md` - Core AI behavioral guidelines
- `dynamic-context-builder.R` - Core context building engine

### 3. Project Definition 📋
**Location**: `project/`

Project-specific implementation of FIDES framework:

| File | Function |
|------|----------|
| `mission.md` | Declares purpose and impact goals (Ukrainian publishing analysis) |
| `glossary.md` | Defines key terms and constructs |
| `method.md` | Articulates valid methods and inference rules |

### 4. Memory System 💾  
**Location**: `memory/`

Human-AI collaborative memory management:
- `memory-ai.md` - AI-maintained insights and patterns
- `memory-human.md` - Human observations and decisions  
- `memory/` - Project memory system directory

### 5. Configuration & Utilities ⚙️
**Location**: `scripts/`

Configuration-driven AI support utilities:
- `ai-config-utils.R` - Configuration reading functions
- `dynamic-context-builder.R` - Context management engine
- Integration with existing `ai-memory-functions.R`

## Project-generic Philosophy 

The foundational philosophy is in `./philosophy/`:

| File | Function |
|------|----------|
| `analysis-templatization.md` | Philosophy of template-based analysis for reproducibility |
| `causal-inference.md` | Guide to causal inference concepts in social sciences |
| `FIDES-example.md` | Example implementation of FIDES framework |
| `semiology.md` | Dialectical epistemology for AI-augmented research |
| `threats-to-validity.md` | Framework for addressing validity threats in research |



