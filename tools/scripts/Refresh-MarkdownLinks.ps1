<#
    .SYNOPSIS
      Refreshes/Synchronizes links table between source CSV (admin/links.csv) and target Markdown
      file's table (docs/links.md).
#>
param (
  [string]$SourceCsv = "$PSScriptRoot/../../admin/links.csv",
  [string]$TargetMd = "$PSScriptRoot/../../docs/links.md"
)

Begin {
  Write-Verbose "[BEGIN]: Refresh-MarkdownLinks.ps1"
}

Process {
  Write-Verbose "[PROCESS]: Refresh-MarkdownLinks.ps1"

  $csvData = Import-Csv -Path $SourceCSV | Select-Object -Property Markdown, Description, Tags
  $headers = $csvData[0].PSObject.Properties.Name -join " | "
  $separator = ($csvData[0].PSObject.Properties.Name | ForEach-Object { ":---:" }) -join " | "
  $rows = $csvData | ForEach-Object { $_.PSObject.Properties.Value -join " | " }

  $markdownTable = @()
  $markdownTable += "| $headers |"
  $markdownTable += "| $separator |"
  $markdownTable += $rows | ForEach-Object { "| $_ |" }

  $mdStartComment = "<!-- BEGIN: LINKS TABLE -->"
  $mdEndComment = "<!-- END: LINKS TABLE -->"

  $mdContent = Get-Content -Path $TargetMd -Raw
  $csvMarkdownContent = $mdStartComment + "`r`n" + ($markdownTable -join "`r`n") + "`r`n" + $mdEndComment

  $newMdContent = $mdContent -replace "(?s)$mdStartComment.*$mdEndComment", $csvMarkdownContent

  $mdStartTimestampComment = "<!-- BEGIN: TIMESTAMP -->"
  $mdEndTimestampComment = "<!-- END: TIMESTAMP -->"

  $timestampContent = $mdStartTimestampComment + "`r`n" + '*Last Updated: ' + (Get-Date -Format "yyyy-MM-dd HH:mm:ss") + '*' + "`r`n" + $mdEndTimestampComment + "`r`n"

  $newMdContent = $newMdContent -replace "(?s)$mdStartTimestampComment.*$mdEndTimestampComment", $timestampContent

  Set-Content -Path $TargetMd -Value $newMdContent
}

End {
  Write-Verbose "[END]: Refresh-MarkdownLinks.ps1"
}
