@echo off
echo ==========================================
echo  OpenClaw DeepSeek Switcher
echo ==========================================
echo.

REM ใส่ API Key ของคุณตรงนี้ (แทนที่ sk-xxxx...)
set DEEPSEEK_API_KEY=sk-xxxxxxxxxxxxxxxx
set OPENCLAW_DEFAULT_MODEL=deepseek/deepseek-chat

echo [OK] Model set to: %OPENCLAW_DEFAULT_MODEL%
echo [OK] API Key configured
echo.
echo Starting OpenClaw...
echo.

openclaw

pause