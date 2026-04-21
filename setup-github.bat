@echo off
REM ===================================
REM ModernWeb - Git Setup & GitHub Push
REM ===================================

echo.
echo === ModernWeb GitHub Setup ===
echo.

REM Check if Git is installed
git --version >nul 2>&1
if errorlevel 1 (
    echo ERROR: Git is not installed or not in PATH
    echo.
    echo Please install Git from: https://git-scm.com/download/windows
    echo Then run this script again.
    echo.
    pause
    exit /b 1
)

echo [✓] Git is installed
echo.

REM Navigate to project directory
cd /d "C:\Users\Talaba\Desktop\c++"
echo [✓] Changed to project directory

REM Initialize git repository
echo.
echo Initializing Git repository...
git init
echo [✓] Git repository initialized

REM Configure Git (one time)
echo.
echo Configuring Git...
git config user.name "Talaba"
git config user.email "your.email@github.com"
echo [✓] Git configured

REM Add all files
echo.
echo Adding files to staging area...
git add .
echo [✓] Files added

REM Create first commit
echo.
echo Creating first commit...
git commit -m "Initial commit: ModernWeb - Professional Responsive Website"
echo [✓] First commit created

REM Add remote origin
echo.
echo Adding GitHub remote...
git remote add origin https://github.com/instutitisft-lab/prosta.git
echo [✓] Remote added

REM Rename branch to main
echo.
echo Setting main branch...
git branch -M main
echo [✓] Branch renamed to main

REM Push to GitHub
echo.
echo Pushing to GitHub...
echo.
echo NOTE: GitHub will ask for authentication:
echo  - Username: your GitHub username
echo  - Password: your Personal Access Token (not your password)
echo.
echo If you don't have a PAT, create one at:
echo https://github.com/settings/tokens
echo.
pause

git push -u origin main

if errorlevel 1 (
    echo.
    echo ERROR: Push failed. Please check your GitHub credentials.
    pause
    exit /b 1
)

echo.
echo [✓] SUCCESS! Your website is now on GitHub!
echo.
echo Your repository: https://github.com/instutitisft-lab/prosta
echo.
echo To enable GitHub Pages (free hosting):
echo 1. Go to your repository Settings
echo 2. Select Pages
echo 3. Choose 'main' branch as source
echo 4. Your site will be live at: https://instutitisft-lab.github.io/prosta/
echo.
pause
