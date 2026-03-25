# Version History

This repository contains multiple versions of the Historical File Import Tool.

## Available Versions

### Version 13 (Current - Live)
- **Location**: `index.html` (main entry point) and `versions/v13/Historical File Import Tool.html`
- **Branch**: `main`
- **Features**:
  - Now generated from CSV-TXT Column Mapper.html via sync-to-historical.ps1 build script
  - Ensures both tools stay in sync automatically

### Version 12
- **Location**: `versions/v12/Historical File Import Tool.html`
- **Branch**: `main`
- **Features**:
  - Original/Trimmed preview tabs in Historical File Prep section

### Version 11
- **Location**: `versions/v11/Historical File Import Tool.html`
- **Branch**: `main`
- **Features**:
  - Info tooltips on all section headers: hover the (i) icon to see what each section does
  - Tooltips added to Column Mapping Results, Header Comparison, Channel Identifier, Swing Well Mapping, and Historical File Prep
  - Fixed overflow clipping so tooltips render correctly when sections are collapsed
  - Compact inline upload zone styling for Header Comparison, Channel Identifier, and Swing Well Mapping
  - Renamed section: Trim CSV Data (WL Historicals) → Historical File Prep (Wireline)

### Version 10
- **Location**: `versions/v10/Historical File Import Tool.html`
- **Branch**: `main`
- **Features**:
  - New Trim CSV Data (WL Historicals) section: multi-file upload, trim rows, normalize datetime to mm/dd/yyyy hh:mm:ss
  - Handles all-colon TXT datetime format (MM:DD:YYYY:HH:MM:SS) conversion
  - TXT-to-CSV conversion on output with sequential download of all trimmed files
  - Raw file preview on click with skipped/header/unit row highlighting
  - Configurable Header Row, Unit Row, and Row of First Data
  - Removed Select Mapping Configuration section
  - Updated page title to Historical File Import Tool

### Version 9
- **Location**: `versions/v9/Historical File Import Tool.html`
- **Branch**: `main`
- **Features**:
  - Select All now only selects filtered/visible channels (respects search and avg range filters)
  - Select All excludes columns with average values <= 0
  - Chart resize performance fix: rAF-throttled resize during panel/column drag instead of per-pixel updates
  - Disabled Chart.js animations and enabled min-max decimation for smoother rendering with many channels

### Version 8
- **Location**: `versions/v8/Historical File Import Tool.html`
- **Branch**: `main`
- **Features**:
  - Black background theme: replaced all blue/purple-tinted dark colors with true black and neutral grays
  - Consistent dark UI matching Corva-style interface

### Version 7
- **Location**: `versions/v7/Historical File Import Tool.html`
- **Branch**: `main`
- **Features**:
  - CSV Data Viewer fullscreen toggle: expand the CSV viewer to full width, hiding the PDF panel and upload buttons
  - Toggle button in the CSV Data Viewer header with expand/collapse icons
  - Auto-resizes chart when toggling fullscreen mode

### Version 6
- **Location**: `versions/v6/Historical File Import Tool.html`
- **Features**:
  - Y-axis scale lock: set a Y-axis range and it persists across column toggles until explicitly reset
  - Y-axis locked banner notification with inline Reset button
  - X-axis visibility fix: canvas wrapper ensures chart never clips the X-axis
  - Compact inline upload buttons for Channel Identifier section (matches Swing Well Mapping style)
  - Column resizer directly triggers Chart.js resize for smoother interaction

### Version 5
- **Location**: `versions/v5/Historical File Import Tool.html`
- **Features**:
  - Swing Well Mapping section
  - Styling refinements

### Version 4
- **Location**: `versions/v4/Historical File Import Tool.html`
- **Features**:
  - TXT support, average-range filter, bulk convert

### Version 3
- **Location**: `versions/v3/Historical File Import Tool.html`
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
- **Current (v13)**: https://michaelestrella-ops.github.io/historical-file-import-tool/
- **v12**: Open `versions/v12/Historical File Import Tool.html`
- **v11**: Open `versions/v11/Historical File Import Tool.html`
- **v10**: Open `versions/v10/Historical File Import Tool.html`
- **v9**: Open `versions/v9/Historical File Import Tool.html`
- **v8**: Open `versions/v8/Historical File Import Tool.html`
- **v7**: Open `versions/v7/Historical File Import Tool.html`
- **v6**: Open `versions/v6/Historical File Import Tool.html`
- **v5**: Open `versions/v5/Historical File Import Tool.html`
- **v4**: Open `versions/v4/Historical File Import Tool.html`
- **v3**: Open `versions/v3/Historical File Import Tool.html`
- **v2**: Checkout the `v2.0.0` tag or view `versions/v2/Historical File Import Tool.html`
- **v1**: Checkout the `v1.0.0` tag or view `versions/v1/Historical File Import Tool.html`

### Local Access
- **v13**: Open `index.html` or `versions/v13/Historical File Import Tool.html`
- **v12**: Open `versions/v12/Historical File Import Tool.html`
- **v11**: Open `versions/v11/Historical File Import Tool.html`
- **v10**: Open `versions/v10/Historical File Import Tool.html`
- **v9**: Open `versions/v9/Historical File Import Tool.html`
- **v8**: Open `versions/v8/Historical File Import Tool.html`
- **v7**: Open `versions/v7/Historical File Import Tool.html`
- **v6**: Open `versions/v6/Historical File Import Tool.html`
- **v5**: Open `versions/v5/Historical File Import Tool.html`
- **v4**: Open `versions/v4/Historical File Import Tool.html`
- **v3**: Open `versions/v3/Historical File Import Tool.html`
- **v2**: Open `versions/v2/Historical File Import Tool.html`
- **v1**: Open `versions/v1/Historical File Import Tool.html`
