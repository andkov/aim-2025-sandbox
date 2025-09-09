# Ukrainian Oblast Mapping Assets

**Generated:** 2025-09-09 15:09:57.871997
**Source:** KSE-Loc-Data-Hub

## Files

- `terhromad_fin.geojson` - Hromada-level polygons (source data)
- `ua_oblast_polygons.rds` - Oblast polygons for R (fast loading)
- `ua_oblast_polygons.geojson` - Oblast polygons (universal format)
- `name_harmonization_check.csv` - Name matching between polygons and data

## Usage

```r
# Load oblast polygons
library(sf)
oblasts <- readRDS('data-private/derived/manipulation/mapping/ua_oblast_polygons.rds')

# Join with your data
oblasts_with_data <- oblasts %>%
  left_join(your_data, by = 'oblast_name_en')
```

## Reference

See `analysis/map-guide/` for complete mapping examples using tmap and leaflet.

