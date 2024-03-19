$csvFiles = Get-ChildItem -Filter *.csv
$combinedCsv = @()

foreach ($file in $csvFiles) {
    $csvContent = Import-Csv -Path $file.FullName
    $combinedCsv += $csvContent
}

$combinedCsv | Export-Csv -Path ./combined_dataset.csv -NoTypeInformation

# Prompt to hit Enter to close
Read-Host "Complete! Press Enter to close."
