Write-Host "Stopping all environments..." -ForegroundColor Yellow

terraform -chdir=terraform workspace select dev
terraform -chdir=terraform destroy -auto-approve

terraform -chdir=terraform workspace select test
terraform -chdir=terraform destroy -auto-approve

terraform -chdir=terraform workspace select prod
terraform -chdir=terraform destroy -auto-approve

Write-Host "All environments destroyed. AWS cost stopped." -ForegroundColor Green