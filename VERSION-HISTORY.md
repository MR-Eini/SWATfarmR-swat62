# SWATfarmR: old and updated versions

These version tags expose the source before the SWAT+ 62 update and the tested updated source in this same repository. They do not replace or rewrite the original Git history.

| Snapshot | Package version | Git tag |
| --- | --- | --- |
| Old source baseline | 4.0.4 | [before-swat62-update](https://github.com/MR-Eini/SWATfarmR-swat62/tree/before-swat62-update) |
| Updated development version | 4.0.5 | [swat62-v4.0.5](https://github.com/MR-Eini/SWATfarmR-swat62/tree/swat62-v4.0.5) |

The old tag points to commit [`2cd0b2fd860af6175ef17435698ce4b72bfd5467`](https://github.com/MR-Eini/SWATfarmR-swat62/commit/2cd0b2fd860af6175ef17435698ce4b72bfd5467), the exact upstream source commit used before these edits. It is a source baseline for this update, not a claim that every bundled package dates from three years ago.

## Review the differences on GitHub

1. Open the [old-to-updated comparison](https://github.com/MR-Eini/SWATfarmR-swat62/compare/before-swat62-update...swat62-v4.0.5?w=1).
2. Scroll to the changed files. GitHub marks removed lines red and added lines green.
3. Open individual files or commits to inspect each change. Where available, select the split view to see old and new code side by side.

The comparison above hides whitespace-only changes, which is especially useful for files with different Windows line endings. The [complete comparison](https://github.com/MR-Eini/SWATfarmR-swat62/compare/before-swat62-update...swat62-v4.0.5) includes every change. The [commit history](https://github.com/MR-Eini/SWATfarmR-swat62/commits/main) shows the incremental updates.

Both tags are fixed snapshots. Future versions should receive new version tags; `main` remains the current working branch. These are maintained development versions, not releases issued by the original authors.

## Main changes

- Retain newly added trailing fields when reading and writing HRU and land-use tables.
- Update simulation years and the management schedule pointer by field or section name.
- Run the supplied status-quo, cover-crop, and crop-rotation schedules with SWAT+ 62.

## Tested scope

The updated packages ran the supplied migrated reference model with the Windows Intel SWAT+ revision 62 executable. The supplied verification, discharge calibration/validation, sensitivity, crop and water-yield workflows produced outputs. The final source test run covered all seven package test directories and passed 78 expectations. These results do not establish compatibility for every model, executable or optional process; scientific calibration acceptance has not been achieved.

See [COMPATIBILITY.md](COMPATIBILITY.md) and [the workflow results](compatibility/workflow-summary.json) for the tests and limitations. Model input migration and updating the old project-generation layer are separate from these package source comparisons.
