# verify-data-access.R
# Verify local data access without external authentication
# For AIM 2025 Sandbox project

cat("DATA ACCESS VERIFICATION\n")
cat("=======================\n\n")

# Check if common-functions.R exists and load it
if (file.exists("./scripts/common-functions.R")) {
  tryCatch({
    source("./scripts/common-functions.R")
    cat("✅ Common functions loaded\n")
  }, error = function(e) {
    cat("❌ Error loading common functions:", e$message, "\n")
  })
} else {
  cat("⚠️  Common functions not found, testing direct database access\n")
}

# Check database files
cat("\n📋 DATABASE FILE CHECK\n")
cat("----------------------\n")

# Load configuration to get correct paths
config <- NULL
if (file.exists("config.yml")) {
  tryCatch({
    config <- config::get(file = "config.yml")
  }, error = function(e) {
    cat("⚠️  Could not load config.yml, using fallback paths\n")
  })
}

# Get database paths from config or use fallbacks
if (!is.null(config) && !is.null(config$database$books_of_ukraine)) {
  databases <- list(
    "Main (analysis-ready)" = config$database$books_of_ukraine$main,
    "Stage 2 (comprehensive)" = config$database$books_of_ukraine$stage_2
  )
} else {
  # Fallback to data-public (correct location for aim-2025-sandbox)
  databases <- list(
    "Main (analysis-ready)" = "data-public/derived/manipulation/SQLite/books-of-ukraine.sqlite",
    "Stage 2 (comprehensive)" = "data-public/derived/manipulation/SQLite/books-of-ukraine-2.sqlite"
  )
}

db_status <- list()

for (name in names(databases)) {
  db_path <- databases[[name]]
  if (file.exists(db_path)) {
    size_mb <- round(file.size(db_path) / (1024^2), 2)
    cat("✅", name, "-", size_mb, "MB\n")
    db_status[[name]] <- TRUE
  } else {
    cat("❌", name, "- FILE MISSING\n")
    cat("   Expected at:", db_path, "\n")
    db_status[[name]] <- FALSE
  }
}

# Test database connections
cat("\n🔌 DATABASE CONNECTION TEST\n")
cat("---------------------------\n")

# Test main database connection
if (db_status[["Main (analysis-ready)"]]) {
  tryCatch({
    if (exists("connect_books_db")) {
      # Use project's connection function if available
      db <- connect_books_db("main")
      tables <- DBI::dbListTables(db)
      DBI::dbDisconnect(db)
      cat("✅ Main database connection successful!\n")
      cat("   Available tables:", length(tables), "\n")
      cat("   Sample tables:", paste(head(tables, 3), collapse = ", "), "\n")
    } else {
      # Direct connection test
      library(DBI)
      library(RSQLite)
      db <- dbConnect(RSQLite::SQLite(), databases[["Main (analysis-ready)"]])
      tables <- dbListTables(db)
      dbDisconnect(db)
      cat("✅ Main database connection successful!\n")
      cat("   Available tables:", length(tables), "\n")
    }
  }, error = function(e) {
    cat("❌ Main database connection failed:", e$message, "\n")
  })
} else {
  cat("⚠️  Skipping main database test - file not found\n")
}

# Test stage-2 database connection
if (db_status[["Stage 2 (comprehensive)"]]) {
  tryCatch({
    if (exists("connect_books_db")) {
      # Use project's connection function if available
      db <- connect_books_db("stage_2")
      tables <- DBI::dbListTables(db)
      DBI::dbDisconnect(db)
      cat("✅ Stage 2 database connection successful!\n")
      cat("   Available tables:", length(tables), "\n")
      cat("   Sample tables:", paste(head(tables, 3), collapse = ", "), "\n")
    } else {
      # Direct connection test
      library(DBI)
      library(RSQLite)
      db <- dbConnect(RSQLite::SQLite(), databases[["Stage 2 (comprehensive)"]])
      tables <- dbListTables(db)
      dbDisconnect(db)
      cat("✅ Stage 2 database connection successful!\n")
      cat("   Available tables:", length(tables), "\n")
    }
  }, error = function(e) {
    cat("❌ Stage 2 database connection failed:", e$message, "\n")
  })
} else {
  cat("⚠️  Skipping stage 2 database test - file not found\n")
}

# Check required R packages
cat("\n📦 PACKAGE AVAILABILITY CHECK\n")
cat("-----------------------------\n")

required_packages <- c("DBI", "RSQLite", "dplyr", "readr")
optional_packages <- c("quarto", "stringr", "yaml", "knitr", "rmarkdown")

for (pkg in required_packages) {
  if (requireNamespace(pkg, quietly = TRUE)) {
    cat("✅", pkg, "\n")
  } else {
    cat("❌", pkg, "- REQUIRED PACKAGE MISSING\n")
  }
}

cat("\nOptional packages:\n")
for (pkg in optional_packages) {
  if (requireNamespace(pkg, quietly = TRUE)) {
    cat("✅", pkg, "\n")
  } else {
    cat("⚠️ ", pkg, "- optional, not installed\n")
  }
}

# Summary
cat("\n📊 VERIFICATION SUMMARY\n")
cat("======================\n")

working_dbs <- sum(unlist(db_status))
total_dbs <- length(db_status)

if (working_dbs == total_dbs) {
  cat("🎉 ALL SYSTEMS OPERATIONAL!\n")
  cat("   - All databases available\n")
  cat("   - Database connections working\n")
  cat("   - Ready for analysis\n")
} else if (working_dbs > 0) {
  cat("⚠️  PARTIAL ACCESS AVAILABLE\n")
  cat("   - Some databases missing\n")
  cat("   - Limited analysis capabilities\n")
} else {
  cat("❌ NO DATABASE ACCESS\n")
  cat("   - All databases missing\n")
  cat("   - Check data-private/derived/ directory\n")
}

cat("\n💡 NEXT STEPS:\n")
if (working_dbs > 0) {
  cat("   1. Start analysis with: source('analysis/eda-1/eda-1.R')\n")
  cat("   2. Explore data with AI assistance\n")
  cat("   3. Run comprehensive diagnostics: comprehensive_project_diagnostics()\n")
} else {
  cat("   1. Check if databases exist in data-private/derived/\n")
  cat("   2. Contact project maintainer for database files\n")
  cat("   3. Verify directory structure\n")
}

cat("\n✅ Data access verification complete!\n")