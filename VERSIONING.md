# Version History

This repository contains multiple versions of the Historical File Import Tool.

## Available Versions

### Version 3 (Current - Live)
- **Location**: `index.html` (main entry point) and `versions/v3/Historical File Import Tool.html`
- **Branch**: `main`
- **Tag**: `v3`
- **Features**:
  - Y-axis scale popup: click the chart Y-axis to set min/max scale
  - Smaller Upload PDF and Upload Historical File buttons
  - X-axis visibility fix for comparison chart

### Version 2.0.0 (Enhanced Version)
- **Location**: `versions/v2/Historical File Import Tool.html`
- **Branch**: `enhanced-version`
- **Tag**: `v2.0.0`
- **Features**:
  - Support for TXT and XLSX file uploads
  - CSV download functionality for converted files
  - Improved delimiter detection for TXT files
  - Enhanced UI with better file handling

### Version 1.0.0 (Original)
- **Location**: `versions/v1/Historical File Import Tool.html`
- **Branch**: `main`
- **Tag**: `v1.0.0`
- **Features**: Original version with CSV/XLSX header comparison and PDF vs CSV channel identification

## Accessing Versions

### GitHub Pages
- **Current (v3)**: https://michaelestrella-ops.github.io/historical-file-import-tool/
- **v2**: Checkout the `v2.0.0` tag or view `versions/v2/Historical File Import Tool.html`
- **v1**: Checkout the `v1.0.0` tag or view `versions/v1/Historical File Import Tool.html`

### Local Access
- **v3**: Open `index.html` or `versions/v3/Historical File Import Tool.html`
- **v2**: Open `versions/v2/Historical File Import Tool.html`
- **v1**: Open `versions/v1/Historical File Import Tool.html`

## Switching Versions

### To use v1 locally:
```bash
git checkout v1.0.0
# or
git checkout main
```

### To use v2 locally:
```bash
git checkout v2.0.0
# or
git checkout enhanced-version
```

## GitHub Pages Configuration

To change which version is served on GitHub Pages:
1. Go to repository **Settings → Pages**
2. Under **Build and deployment**, set **Source** to **Deploy from a branch**
3. Choose branch and folder:
   - **For v3 (current)**: Branch `main`, folder `/ (root)`
   - For v2: Use `enhanced-version` branch
   - For v1: Use `main` with an older commit or tag

## Rollback Instructions

If you need to rollback to v1:
1. Switch GitHub Pages to use `main` branch
2. Or checkout the `v1.0.0` tag locally
