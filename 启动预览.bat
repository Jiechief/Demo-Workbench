@echo off
chcp 65001 >nul
echo.
echo  AccioWork 售卖介绍工作台 — 本地预览服务
echo  ============================================
echo.
echo  正在启动本地服务器...
echo  浏览器将自动打开: http://localhost:8778
echo  按 Ctrl+C 停止服务
echo.
start /b python -m http.server 8778 --directory "%~dp0" 2>nul
if errorlevel 1 (
  echo  Python 不可用，尝试 npx serve...
  npx serve "%~dp0" -l 8778
) else (
  timeout /t 2 /nobreak >nul
  start http://localhost:8778/accio-work-sales-workbench.html
  echo  服务已启动，浏览器已打开。
  echo  保持此窗口打开以维持服务，按 Ctrl+C 停止。
)
pause >nul
