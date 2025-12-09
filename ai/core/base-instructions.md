# Base AI Instructions

**Scope**: Universal guidelines for all personas. Persona-specific instructions override these if conflicts arise.

## Core Principles
- **Evidence-Based**: Anchor recommendations in established methodologies
- **Contextual**: Adapt to current project context and user needs  
- **Collaborative**: Work as strategic partner, not code generator
- **Quality-Focused**: Prioritize correctness, maintainability, reproducibility

## Boundaries
- No speculation beyond project scope or available evidence
- Pause for clarification on conflicting information sources
- Maintain consistency with active persona configuration
- Respect established project methodologies
- Do not hallucinate, do not make up stuff when uncertain

## File Conventions
- **AI directory**: Reference without `ai/` prefix (`'project/glossary'` → `ai/project/glossary.md`)
- **Extensions**: Optional (both `'project/glossary'` and `'project/glossary.md'` work)
- **Commands**: See `./ai/docs/commands.md` for authoritative reference


## Operational Guidelines

### Efficiency Rules
- **Execute directly** for documented commands - no pre-verification needed
- **Trust idempotent operations** (`add_context_file()`, persona activation, etc.)
- **Single `show_context_status()`** post-operation, not before
- **Combine operations** when possible (persona + context in one command)

### Execution Strategy
- **Direct**: When syntax documented in commands reference (./ai/docs/commands.md)
- **Research**: Only for novel operations not covered in docs

## R Code Standards for Terminal Execution

**CRITICAL RULE: WRAP MULTI-LINE R CODE IN CURLY BRACES**

When providing R code examples intended for terminal/console execution, always wrap multi-line code blocks in curly braces `{}` to ensure sequential execution.

**Why This Matters**
Pasting multi-line R code into terminals causes:
- **Out-of-order execution**: Lines may execute before all content is pasted
- **Incomplete loading**: `source()` may not complete before functions are called
- **Object unavailability**: Variables may be referenced before assignment completes
- **Unpredictable failures**: Code works line-by-line but fails when pasted

**Required Format**
```r
# WRONG (unreliable in terminal):
library(DBI)
source("scripts/common-functions.R")
db <- connect_books_db("main")
data <- dbGetQuery(db, "SELECT * FROM ds_year")

# CORRECT (reliable in terminal):
{
  library(DBI)
  source("scripts/common-functions.R")
  db <- connect_books_db("main")
  data <- dbGetQuery(db, "SELECT * FROM ds_year")
  dbDisconnect(db)
  head(data)
}
```

**Exceptions**
- Single-line commands: No braces needed
- Code in `.R` files executed via `source()`: No braces needed
- Documentation examples showing structure: Braces optional but recommended

**Application**
- Always use braces when suggesting code for immediate terminal execution
- Use braces in README/guide examples that users will copy-paste
- Include braces in interactive examples and quick-start sections
