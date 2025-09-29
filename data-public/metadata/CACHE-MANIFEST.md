# CACHE Manifest

This file describes the current state of cached data files in the project.

## SQLite Databases

- **books-of-ukraine.sqlite** (Analysis database) - 2025-09-09 15:10:07
  - ds_year: Annual publishing totals (year, title_count, copy_count)
  - ds_language: Publishing by language (year, language_ua, language, title_count, copy_count)
  - ds_territory: Publishing by territory (year, territory_ua, territory, oblast_code, title_count, copy_count)
  - ds_theme: Publishing by theme (year, theme_ua, theme, title_count, copy_count)
  - ds_purpose: Publishing by purpose (year, purpose_ua, purpose, title_count, copy_count)
  - ds_oblast: Administrative data for Ukrainian oblasts
  - ds_bookstores: Custom bookstore data

- **books-of-ukraine-2.sqlite** (Comprehensive database) - 2025-09-09 15:10:07
  - Contains all source tables plus administrative and custom data
  - Use for accessing raw/source data when needed

## Usage Notes

- Analysis scripts should use the main database (books-of-ukraine.sqlite)
- Tables contain both Ukrainian (*_ua) and English terms for human convenience
- All tables use measures as columns format for analytical convenience
- Source data remains available in the comprehensive Stage 2 database

