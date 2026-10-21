$ErrorActionPreference='Stop'
$videoDir=Join-Path $PSScriptRoot '2026.10.14 工程材料讲座'
New-Item -ItemType Directory -Path $videoDir -Force | Out-Null
$dest=Join-Path $videoDir '上半场1.mp4'
Invoke-WebRequest -Uri 'https://github.com/Yvonne-no7/SJTU-Engineering-Materials-Lectures/releases/download/2026-10-14/upper-part-1.mp4' -OutFile $dest
if((Get-FileHash -LiteralPath $dest -Algorithm SHA256).Hash -ne '14cfeb4428b53f122555e54ad6b7062601f3eaa772c312bcc0a72f7c0aa90c46'){throw '下载校验失败：上半场1.mp4'}
Write-Host '已下载并校验：上半场1.mp4'
$dest=Join-Path $videoDir '上半场2.mp4'
Invoke-WebRequest -Uri 'https://github.com/Yvonne-no7/SJTU-Engineering-Materials-Lectures/releases/download/2026-10-14/upper-part-2.mp4' -OutFile $dest
if((Get-FileHash -LiteralPath $dest -Algorithm SHA256).Hash -ne '4e3af59a670fbf55f319126bd24032b028ef0d56e733948a247d6ea5bd4e5aa5'){throw '下载校验失败：上半场2.mp4'}
Write-Host '已下载并校验：上半场2.mp4'
$dest=Join-Path $videoDir '上半场3.mp4'
Invoke-WebRequest -Uri 'https://github.com/Yvonne-no7/SJTU-Engineering-Materials-Lectures/releases/download/2026-10-14/upper-part-3.mp4' -OutFile $dest
if((Get-FileHash -LiteralPath $dest -Algorithm SHA256).Hash -ne '7edef3315bffc5cc07d628be5e002f82358f8dc6c3ea8896e8bb8acf6ec8ec36'){throw '下载校验失败：上半场3.mp4'}
Write-Host '已下载并校验：上半场3.mp4'
$dest=Join-Path $videoDir '下半场.mp4'
Invoke-WebRequest -Uri 'https://github.com/Yvonne-no7/SJTU-Engineering-Materials-Lectures/releases/download/2026-10-14/lower-part.mp4' -OutFile $dest
if((Get-FileHash -LiteralPath $dest -Algorithm SHA256).Hash -ne '6f3a3258e96c17f6444797ec4c1152a85b0b4d41d65cd47ad01f818b2c768833'){throw '下载校验失败：下半场.mp4'}
Write-Host '已下载并校验：下半场.mp4'
