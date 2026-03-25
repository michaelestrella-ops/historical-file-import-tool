# sync-to-historical.ps1
# Generates "Historical File Import Tool.html" from "CSV-TXT Column Mapper.html"
#
# Usage:  .\sync-to-historical.ps1
#
# What it does:
#   1. Copies CSV-TXT Column Mapper.html as the base
#   2. Swaps the page title and header branding
#   3. Strips the "Select Mapping Configuration" section and config modal
#   4. Writes the result to Historical File Import Tool.html

$ErrorActionPreference = "Stop"

$sourceFile = Join-Path $PSScriptRoot "CSV-TXT Column Mapper.html"
$outputFile = Join-Path $PSScriptRoot "Historical File Import Tool.html"

if (-not (Test-Path $sourceFile)) {
    Write-Host "ERROR: Source file not found: $sourceFile" -ForegroundColor Red
    exit 1
}

# Read with explicit UTF-8 encoding to preserve emoji and special characters
$utf8 = New-Object System.Text.UTF8Encoding($false)
$lines = [System.IO.File]::ReadAllLines($sourceFile, $utf8)

# --- Find the block to remove (line indices) ---
$startMarker = '<div class="mapping-selector">'
$endMarker = '<!-- Modal for displaying column chart -->'

$removeStart = -1
$removeEnd = -1

for ($i = 0; $i -lt $lines.Count; $i++) {
    if ($removeStart -eq -1 -and $lines[$i].Trim() -eq $startMarker) {
        $removeStart = $i
    }
    if ($lines[$i].Trim() -eq $endMarker) {
        $removeEnd = $i
        break
    }
}

if ($removeStart -eq -1 -or $removeEnd -eq -1) {
    Write-Host "ERROR: Could not find block boundaries." -ForegroundColor Red
    Write-Host "  Start marker ('$startMarker'): $(if ($removeStart -ge 0) { "found at line $($removeStart+1)" } else { 'NOT FOUND' })" -ForegroundColor Yellow
    Write-Host "  End marker ('$endMarker'): $(if ($removeEnd -ge 0) { "found at line $($removeEnd+1)" } else { 'NOT FOUND' })" -ForegroundColor Yellow
    exit 1
}

# Build output: everything before the block + everything from the end marker onward
$output = New-Object System.Collections.Generic.List[string]
for ($i = 0; $i -lt $removeStart; $i++) { $output.Add($lines[$i]) }
for ($i = $removeEnd; $i -lt $lines.Count; $i++) { $output.Add($lines[$i]) }

# --- Apply text replacements ---
for ($i = 0; $i -lt $output.Count; $i++) {
    $output[$i] = $output[$i] -replace '<title>CSV/TXT Column Mapper - Multi-Configuration</title>', '<title>Historical File Import Tool</title>'
    $output[$i] = $output[$i] -replace '<h1>CSV/TXT Column Mapper</h1>', '<h1>Historical File Import Tool</h1>'
    $output[$i] = $output[$i] -replace '<p>Historical File Mapping Tool</p>', '<p>Map, validate, and prep historical files for Corva import</p>'
}

# --- Write output with UTF-8 (no BOM) to preserve all characters ---
[System.IO.File]::WriteAllLines($outputFile, $output.ToArray(), $utf8)

# --- Verify ---
$outLines = $output.Count
$hasTitle = $false
$noMapper = $true
$hasChart = $false

foreach ($line in $output) {
    if ($line -match '<title>Historical File Import Tool</title>') { $hasTitle = $true }
    if ($line -match '<div class="mapping-selector">') { $noMapper = $false }
    if ($line -match 'Modal for displaying column chart') { $hasChart = $true }
}

$removedCount = $removeEnd - $removeStart

Write-Host ""
Write-Host "  Sync complete!" -ForegroundColor Green
Write-Host "  Source:  CSV-TXT Column Mapper.html" -ForegroundColor DarkGray
Write-Host "  Output:  Historical File Import Tool.html ($outLines lines)" -ForegroundColor DarkGray
Write-Host "  Removed: $removedCount lines (mapping-selector + config modal)" -ForegroundColor DarkGray
Write-Host ""

$allPass = $true

if ($hasTitle) {
    Write-Host "  [PASS] Title swapped to 'Historical File Import Tool'" -ForegroundColor Green
} else {
    Write-Host "  [FAIL] Title swap may have failed" -ForegroundColor Red
    $allPass = $false
}

if ($noMapper) {
    Write-Host "  [PASS] Mapping-selector section stripped (CSS class kept, HTML removed)" -ForegroundColor Green
} else {
    Write-Host "  [FAIL] Mapping-selector HTML block still present" -ForegroundColor Red
    $allPass = $false
}

if ($hasChart) {
    Write-Host "  [PASS] Chart modal preserved" -ForegroundColor Green
} else {
    Write-Host "  [FAIL] Chart modal may be missing" -ForegroundColor Red
    $allPass = $false
}

Write-Host ""
if ($allPass) {
    Write-Host "  All checks passed. Ready to deploy!" -ForegroundColor Cyan
} else {
    Write-Host "  Some checks failed. Review the output file before deploying." -ForegroundColor Yellow
}
Write-Host ""
