# Instalador de 1 Linha do SUPER-AGENTE (Windows PowerShell)
param(
    [string]$TargetDir = "."
)

$ErrorActionPreference = "Stop"
$RepoUrl = "https://github.com/joaojvb/SUPER-AGENTE.git"
$TempDir = Join-Path $env:TEMP ("super-agente-" + [guid]::NewGuid().ToString("N"))

Write-Host "[SUPER-AGENTE] Baixando matriz de 28 especialistas de $RepoUrl..." -ForegroundColor Cyan
git clone --depth 1 $RepoUrl $TempDir | Out-Null

Remove-Item -Recurse -Force (Join-Path $TempDir ".git")
Copy-Item -Path (Join-Path $TempDir "*") -Destination $TargetDir -Recurse -Force
Remove-Item -Recurse -Force $TempDir

Write-Host "[SUPER-AGENTE] Instalado com sucesso em: $(Resolve-Path $TargetDir)" -ForegroundColor Green
Write-Host "[SUPER-AGENTE] Abra seu editor de IA (Antigravity, Cursor, Claude Code, Windsurf) e mande sua ideia!" -ForegroundColor Yellow
