# GitHub Upload Guide for ModernWeb

## Quick Start (Choose One)

### Option 1: Run PowerShell Script (Easiest)
1. Make sure Git is installed first
2. Right-click `setup-github.ps1`
3. Select "Run with PowerShell"
4. Follow the prompts

### Option 2: Run Batch Script
1. Make sure Git is installed first
2. Double-click `setup-github.bat`
3. Follow the prompts

### Option 3: Manual Commands
Copy and paste these commands in PowerShell:

```powershell
cd "C:\Users\Talaba\Desktop\c++"
git init
git config user.name "Talaba"
git config user.email "your.email@github.com"
git add .
git commit -m "Initial commit: ModernWeb - Professional Responsive Website"
git remote add origin https://github.com/instutitisft-lab/prosta.git
git branch -M main
git push -u origin main
```

---

## Step-by-Step Manual Guide

### Step 1: Install Git
1. Download from https://git-scm.com/download/windows
2. Run the installer
3. Use default settings
4. Restart your computer

### Step 2: Verify Git Installation
Open PowerShell and run:
```powershell
git --version
```
You should see: `git version 2.x.x`

### Step 3: Navigate to Project
```powershell
cd "C:\Users\Talaba\Desktop\c++"
```

### Step 4: Initialize Repository
```powershell
git init
```

### Step 5: Configure Git
```powershell
git config user.name "Talaba"
git config user.email "your.email@github.com"
```

### Step 6: Add Files
```powershell
git add .
```

### Step 7: Create First Commit
```powershell
git commit -m "Initial commit: ModernWeb - Professional Responsive Website"
```

### Step 8: Add Remote Repository
```powershell
git remote add origin https://github.com/instutitisft-lab/prosta.git
```

### Step 9: Rename Branch
```powershell
git branch -M main
```

### Step 10: Push to GitHub
```powershell
git push -u origin main
```

When prompted:
- **Username:** Your GitHub username
- **Password:** Your Personal Access Token (NOT your GitHub password)

---

## Creating a Personal Access Token

1. Go to https://github.com/settings/tokens
2. Click "Generate new token"
3. Name it: "ModernWeb-Push"
4. Select scopes: Check `repo` (full control)
5. Click "Generate token"
6. Copy the token (you won't see it again!)
7. Use it as password when Git asks

---

## Verify Upload

After pushing:
1. Go to https://github.com/instutitisft-lab/prosta
2. You should see all your files there ✅

---

## Enable GitHub Pages (Free Hosting)

1. Go to your GitHub repository
2. Click **Settings**
3. Scroll down to **Pages**
4. Under "Source" select **main** branch
5. Click **Save**
6. Wait a few minutes
7. Your site will be live at: **https://instutitisft-lab.github.io/prosta/**

---

## Troubleshooting

### "git: command not found"
**Solution:** Git is not installed. Download from https://git-scm.com/download/windows

### "Repository already exists"
**Solution:** You already ran `git init`. Delete the `.git` folder and try again:
```powershell
Remove-Item .\.git -Recurse -Force
git init
# ... continue with other commands
```

### "fatal: remote origin already exists"
**Solution:** The remote was already added. Remove it first:
```powershell
git remote remove origin
git remote add origin https://github.com/instutitisft-lab/prosta.git
```

### "Authentication failed"
**Solution:** You're using your GitHub password instead of a Personal Access Token.
1. Create a PAT: https://github.com/settings/tokens
2. Use the PAT as your password

### "Branch 'main' set up to track remote 'origin/main'"
**This is good!** It means the push worked.

---

## Project Files

Your GitHub repository now contains:

```
instutitisft-lab/prosta/
├── index.html           (Home page - Hero section)
├── about.html           (About page - Team & Stats)
├── services.html        (Services page - 6 services & pricing)
├── contact.html         (Contact page - Form & Map)
├── blog.html            (Blog page - 6 articles)
├── css/
│   └── style.css        (1000+ lines responsive CSS)
├── js/
│   └── script.js        (Complete JavaScript features)
├── assets/              (Images/resources folder)
├── README.md            (Project documentation)
├── LICENSE              (MIT License)
├── .gitignore           (Git ignore rules)
├── setup-github.bat     (Batch setup script)
├── setup-github.ps1     (PowerShell setup script)
└── GITHUB-SETUP.md      (This file)
```

---

## Next Steps

1. ✅ Push to GitHub - Done!
2. 📺 Enable GitHub Pages for free hosting
3. 🎨 Customize the website with your content
4. 📱 Test on mobile devices
5. 🔍 Check SEO with Google Search Console
6. 📊 Add Google Analytics
7. 📧 Set up contact form backend
8. 🚀 Deploy to production

---

## Useful GitHub Links

- **Repository:** https://github.com/instutitisft-lab/prosta
- **GitHub Pages Setup:** https://pages.github.com/
- **Git Documentation:** https://git-scm.com/doc
- **GitHub Guides:** https://guides.github.com/

---

## Support

For issues with Git or GitHub:
- Git Documentation: https://git-scm.com/doc
- GitHub Help: https://help.github.com
- Stack Overflow: https://stackoverflow.com/questions/tagged/git

---

**Last Updated:** April 21, 2026
**Status:** Ready to Deploy ✅
