# Manifest Automation Deprecated

The previous automatically generated file `ai/CACHE-manifest-0.md` has been retired.

## Current Practice
- Authoritative manifest: `data-public/metadata/CACHE-MANIFEST.md`
- Maintained manually (human-authored / human-verified)
- No automatic regeneration by scripts

## R Functions Status
- `check_cache_manifest()` now only reports presence of the manual file.
- `update_cache_manifest()` is deprecated and no longer writes any file.
- `build_cache_manifest()` retained as an alias and is also inert.

## Rationale
1. Prevent unsupervised overwrites of curated documentation.
2. Centralize metadata with other public data descriptors.
3. Increase trust & auditability of data documentation.

## If You Need to Update the Manifest
1. Open `data-public/metadata/CACHE-MANIFEST.md`.
2. Edit content to reflect current dataset inventory and structure.
3. Commit changes with a clear message (e.g. `docs: update cache manifest after new derived tables`).
4. (Optional) Log the change: `log_change('data-public/metadata/CACHE-MANIFEST.md','Update manifest after pipeline changes')`.

## Do Not Reintroduce Automation Without Discussion
Any attempt to programmatically recreate the old flow should include:
- Safeguards against overwriting manual edits
- Explicit user confirmation
- Separation of draft vs published manifest

Contact project maintainers before altering this policy.

## Historical Task Removal
The VS Code task `update-cache-manifest` was removed on 2025-09-29 when automation was deprecated. Any references in older documentation or scripts should be considered obsolete.
