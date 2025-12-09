# Methods

## Data Sources

**Primary Data**: Book Chamber of Ukraine (BCU) publishing records (2005-2023)
- Title count: Number of unique publications  
- Copy count: Print circulation figures
- Language classification: Ukrainian, Russian, and 35+ other languages
- Geographic attribution: Oblast/territorial distribution
- Genre classification: Theme and purpose categories

**Administrative Context**: Ukrainian oblast characteristics from KSE Decentralization project
- Demographic: Population, urbanization rates
- Economic: Income per capita, regional classifications  
- Geographic: Area, regional groupings (Western, Eastern, Central, Southern Ukraine)

## Analytical Approach

**Dialectical Data Expression**: Following the FIDES framework, analysis proceeds through multiple representational modes:
- **Tabular**: Long-format analytical tables optimized for temporal and cross-sectional analysis
- **Graphical**: Visualization of trends, regional patterns, and language dynamics
- **Algebraic**: Statistical models capturing relationships between publishing patterns and contextual factors
- **Semantic**: Narrative interpretation connecting findings to Ukrainian cultural and political context

**Exploratory Data Analysis (EDA)**: Systematic investigation of:
1. Temporal patterns in publishing volume and language use
2. Regional differences in publication activity across oblasts
3. Language dynamics, particularly Ukrainian vs Russian trends
4. Genre evolution and subject matter patterns

## Reproducibility Standards

**Database Management**: SQLite databases with staged processing:
- Stage 0: Core publishing data from Book Chamber of Ukraine (BCU)
- Stage 1: BCU + Administrative context  
- Stage 2: BCU + Admin  + Custom Data  (Comprehensive)
- Main: Analysis-ready (Curated))

Note: This project provides only stage 2 and main databases. 

**Database Location**: Unlike the parent `books-of-ukraine` repository, databases are stored in `data-public/derived/manipulation/SQLite/` to ensure immediate availability after repository cloning. Access via `connect_books_db()` function in `scripts/common-functions.R`.

**Scripted Analysis**: R + Quarto workflow with:
- `.R` scripts for iterative development and chunk creation
- `.qmd` documents for publication-ready reports
- Consistent naming conventions and documentation standards

**Validity Considerations**: Addressing threats to validity per Shadish, Cook & Campbell framework:
- **Statistical**: Power analysis, assumption checking
- **Internal**: Historical context awareness, maturation effects
- **Construct**: Operational definitions of language use and regional classifications
- **External**: Generalizability limitations and temporal scope

