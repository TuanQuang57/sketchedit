@echo off
REM Change to the directory where you want to download the files
cd /d path\to\your\project\directory

REM Create checkpoints directory if it doesn't exist
if not exist checkpoints mkdir checkpoints

REM Download the files using wget
wget -O checkpoints\celeb.zip "https://maildluteducn-my.sharepoint.com/:u:/g/personal/zengyu_mail_dlut_edu_cn/ETFFjNQcRzFMs2Dgq6tiVnIB3msKBXYMBOSWnVYEHgrlxQ?download=1"
wget -O checkpoints\places.zip "https://maildluteducn-my.sharepoint.com/:u:/g/personal/zengyu_mail_dlut_edu_cn/EVjX29v1-cVKh_NYo06AbUsBX1ufD0wsb9cLWQsBLGYKDw?download=1"

REM Unzip the files
7z x checkpoints\celeb.zip -o"checkpoints"
7z x checkpoints\places.zip -o"checkpoints"

REM Go back to the initial directory
cd ..