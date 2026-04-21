# ===================================
# ModernWeb - Git Setup & GitHub Push
# PowerShell Version
# ===================================

Write-Host "========================================" -ForegroundColor Cyan
Write-Host "ModernWeb - GitHub Setup" -ForegroundColor Green
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""

# Check if Git is installed
try {
    git --version | Out-Null
    Write-Host "[✓] Git is installed" -ForegroundColor Green
} catch {
    Write-Host "[✗] Git is not installed!" -ForegroundColor Red
    Write-Host ""
    Write-Host "Please download Git from: https://git-scm.com/download/windows" -ForegroundColor Yellow
    Write-Host "Then run this script again." -ForegroundColor Yellow
    Read-Host "Press Enter to exit"
    exit 1
}

# Navigate to project directory
Set-Location "C:\Users\Talaba\Desktop\c++"
Write-Host "[✓] Changed to project directory" -ForegroundColor Green
Write-Host ""

# Initialize git repository
Write-Host "Initializing Git repository..." -ForegroundColor Yellow
git init
Write-Host "[✓] Git repository initialized" -ForegroundColor Green
Write-Host ""

# Configure Git
Write-Host "Configuring Git..." -ForegroundColor Yellow
git config user.name "Talaba"
git config user.email "your.email@github.com"
Write-Host "[✓] Git configured" -ForegroundColor Green
Write-Host ""

# Add all files
Write-Host "Adding files to staging area..." -ForegroundColor Yellow
git add .
Write-Host "[✓] Files added" -ForegroundColor Green
Write-Host ""

# Create first commit
Write-Host "Creating first commit..." -ForegroundColor Yellow
git commit -m "Initial commit: ModernWeb - Professional Responsive Website"
Write-Host "[✓] First commit created" -ForegroundColor Green
Write-Host ""

# Add remote origin
Write-Host "Adding GitHub remote..." -ForegroundColor Yellow
git remote add origin https://github.com/instutitisft-lab/prosta.git
Write-Host "[✓] Remote added" -ForegroundColor Green
Write-Host ""

# Rename branch to main
Write-Host "Setting main branch..." -ForegroundColor Yellow
git branch -M main
Write-Host "[✓] Branch renamed to main" -ForegroundColor Green
Write-Host ""

# Push to GitHub
Write-Host "========================================" -ForegroundColor Cyan
Write-Host "Pushing to GitHub..." -ForegroundColor Yellow
Write-Host "========================================" -ForegroundColor Cyan
Write-Host ""
Write-Host "NOTE: GitHub will ask for authentication:" -ForegroundColor Yellow
Write-Host "  - Username: your GitHub username" -ForegroundColor Cyan
Write-Host "  - Password: your Personal Access Token (not your password)" -ForegroundColor Cyan
Write-Host ""
Write-Host "If you don't have a PAT, create one at:" -ForegroundColor Yellow
Write-Host "https://github.com/settings/tokens" -ForegroundColor Cyan
Write-Host ""
Read-Host "Press Enter to continue with push"
Write-Host ""

git push -u origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host ""
    Write-Host "========================================" -ForegroundColor Cyan
    Write-Host "[✓] SUCCESS! Your website is on GitHub!" -ForegroundColor Green
    Write-Host "========================================" -ForegroundColor Cyan
    Write-Host ""
    Write-Host "Repository: https://github.com/instutitisft-lab/prosta" -ForegroundColor Green
    Write-Host ""
    Write-Host "To enable GitHub Pages (free hosting):" -ForegroundColor Yellow
    Write-Host "  1. Go to your repository Settings" -ForegroundColor Cyan
    Write-Host "  2. Select Pages" -ForegroundColor Cyan
    Write-Host "  3. Choose 'main' branch as source" -ForegroundColor Cyan
    Write-Host "  4. Your site will be live at:" -ForegroundColor Cyan
    Write-Host "     https://instutitisft-lab.github.io/prosta/" -ForegroundColor Green
    Write-Host ""
} else {
    Write-Host ""
    Write-Host "[✗] Push failed!" -ForegroundColor Red
    Write-Host "Please check your GitHub credentials." -ForegroundColor Yellow
    Write-Host ""
}

Read-Host "Press Enter to exit"
