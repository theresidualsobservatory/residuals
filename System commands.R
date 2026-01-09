
#Probably best to use these in terminal (without "system" function) since terminal has the ability to talk back to you.
system("git remote add origin https://github.com/theresidualsobservatory/residuals.git")

# See the git repository you're pushing to
system("git remote -v")

# Try to push to git repository - if brand new, should ask for PAT
system("git push -u origin HEAD")
quarto::quarto_render(".")

# Change user name
git config --global user.name "the residuals observer"

quarto::quarto_render(".")



# Ignore files
git rm --cached "projects/2026.01.09_ICE_activity/ANALYSIS-ERO Admin Arrests_LESA-STU-FINAL Release.xlsx"
git rm --cached "projects/2026.01.09_ICE_activity/ANALYSIS-ERO Detainers_LESA-STU_FINAL Release.xlsx"
git rm --cached "projects/2026.01.09_ICE_activity/ANALYSIS-ERO Admin Arrests_LESA-STU-FINAL Release.rds"
git rm --cached "projects/2026.01.09_ICE_activity/ANALYSIS-ICE Detentions_LESA-STU_FINAL Release.rds"



# Permanently ignore files like these This is a gitignore file. Create a text file and name it ".gitignore". Then run:
# git add .gitignore
# git commit -m "Add .gitignore to ignore data files"

# Data / binary files (never track) 
*.xlsx
*.rds
*.RData
*.qs
*.csv
*.feather
*.parquet
