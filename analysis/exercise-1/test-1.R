source("scripts/common-functions.R")
db <- connect_books_db("main")

# Get yearly data
ds_year <- DBI::dbGetQuery(db, "SELECT * FROM ds_year ORDER BY year")
DBI::dbDisconnect(db)

# Quick look at the data
head(ds_year)

# Simple trend plot
library(ggplot2)
ggplot(ds_year, aes(x = year, y = title_count)) +
  geom_line() +
  geom_point() +
  labs(title = "Publishing Titles by Year (2005-2024)",
       x = "Year", y = "Number of Titles") +
  theme_minimal()
