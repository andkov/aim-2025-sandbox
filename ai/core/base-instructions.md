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

**When This Rule Applies (MANDATORY TRIGGERS)**

✅ **ALWAYS use curly braces when:**
- Code has 2+ lines AND will be pasted into terminal/console
- Code includes `source()` followed by function calls
- Code connects to database (`connect_books_db()`) and queries data
- Providing "try this" or "quick exploration" examples
- Writing code snippets in chat responses for users to execute
- Creating examples in README files, getting-started guides, or quick-start sections
- Any interactive example meant for copy-paste execution

❌ **Exceptions (NO curly braces needed):**
- Single-line commands: `Rscript scripts/test.R`
- Code in `.R` files that will be executed via `source()` or `Rscript`
- Pure documentation examples showing function signatures (not for execution)
- Code blocks explicitly labeled as "file content" or "script structure"

**Pre-Response Validation Checklist**

Before providing R code in any response, verify:
1. ☑️ Is this code multi-line (2+ statements)?
2. ☑️ Will the user paste this into a terminal/console?
3. ☑️ Does it include sequential operations (source + function calls, connect + query)?

If ANY answer is YES → **Wrap in curly braces `{}`**

**Common Violation Patterns to Avoid**

```r
# ❌ WRONG - Missing braces in "try this" suggestion:
"Try this quick exploration:
source('scripts/common-functions.R')
db <- connect_books_db('main')
data <- dbGetQuery(db, 'SELECT * FROM ds_year')"

# ✅ CORRECT - Braces included:
"Try this quick exploration:
{
  source('scripts/common-functions.R')
  db <- connect_books_db('main')
  data <- dbGetQuery(db, 'SELECT * FROM ds_year')
  print(data)
  dbDisconnect(db)
}"
```
