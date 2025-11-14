# docker-clean-all.ps1
# rmove container, immagini, volumi, reti and  Docker clean
# execute as  Administrator / PowerShell elevated
Write-Host "WARNING: this will DELETE containers, images and volumes. Continue? (Y/N)" -ForegroundColor Red
$ans = Read-Host
if ($ans -notin @('Y','y','Yes','yes')) {
    Write-Host "Aborted." -ForegroundColor Yellow
    exit 0
}

Write-Host "Stopping and removing all containers..." -ForegroundColor Cyan
$ids = docker ps -aq
if ($ids) { docker rm -f $ids }

Write-Host "Removing all images..." -ForegroundColor Cyan
$imgs = docker images -aq
if ($imgs) { docker rmi -f $imgs }

Write-Host "Removing all volumes..." -ForegroundColor Cyan
$vols = docker volume ls -q
if ($vols) { docker volume rm $vols }

Write-Host "Pruning system (networks, build cache, etc.)..." -ForegroundColor Cyan
docker system prune -af --volumes

Write-Host "Done." -ForegroundColor Green
