`data-public/` Directory
=========

This directory should contain only datasets that DO NOT hold [PHI](https://www.hhs.gov/answers/hipaa/what-is-phi/index.html) (Protected Health Information), or any other sensitive information.  Files with PHI should **not** be stored in a GitHub repository, even a [private GitHub repository](https://help.github.com/articles/publicizing-or-hiding-your-private-contributions-on-your-profile/).  We recommend using an enterprise database (such as SQL Server, PostgreSQL, MySQL, or Oracle) to store the data, and read & write the information to/from the software right before and after it's used.  These databases typically secure the information at rest, and then require user authentication/authorization (to reduce the chance of sensitive information being accessed by those not approved by your [IRB](https://en.wikipedia.org/wiki/Institutional_review_board)).

## 🗄️ **Database Location Convention - AIM 2025 Sandbox**

**IMPORTANT**: Unlike the parent `books-of-ukraine` repository, this project stores SQLite databases in `data-public/` to make them immediately available after cloning.

### **Correct Database Paths**:
- **Main Database**: `data-public/derived/manipulation/SQLite/books-of-ukraine.sqlite`
- **Stage 2 Database**: `data-public/derived/manipulation/SQLite/books-of-ukraine-2.sqlite`

### **Configuration**:
All database paths are defined in `config.yml` under `database.books_of_ukraine`. Scripts should use `connect_books_db()` function from `scripts/common-functions.R` rather than hardcoded paths.

### **Legacy Note**:
If you see references to `data-private/derived/manipulation/SQLite/` in any scripts or documentation, these are **outdated** and should be updated to use `data-public/derived/manipulation/SQLite/` or preferably the config-based connection functions.

If a database isn't feasible, consider storing the files in `data-private/`, whose contents are not committed to the repository; a line in the `.gitignore` file keeps the files uncommitted/unstaged.  However, there could be some information that is sensitive enough that it shouldn't even be stored locally without encryption (such as PHI).
