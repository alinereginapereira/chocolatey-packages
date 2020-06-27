﻿$ErrorActionPreference = 'Stop';

$toolsPath = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName = 'tablacus'
  file        = "$toolsPath\te200627.zip"
  destination = "$toolsPath"
}

Get-ChocolateyUnzip @packageArgs

Remove-Item "$toolsPath\*.zip" -ea 0 -Force
