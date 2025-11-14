# docker-clean-containers.ps1
# execute ad Administrator / PowerShell elevated

Write-Host "Stopping and removing all containers..." -ForegroundColor Cyan

$ids = docker ps -aq
if ($ids) {
    docker stop $ids
    docker rm -f $ids
    Write-Host "Removed containers." -ForegroundColor Green
} else {
    Write-Host "No containers to remove." -ForegroundColor Yellow
}
