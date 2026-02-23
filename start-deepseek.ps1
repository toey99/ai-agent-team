# OpenClaw with DeepSeek Launcher
# ใช้สคริปต์นี้เพื่อเปิด OpenClaw ด้วย DeepSeek Model

# ตั้งค่า Environment Variables
$env:OPENCLAW_DEFAULT_MODEL="deepseek/deepseek-chat"
$env:DEEPSEEK_API_KEY="sk-xxxxxxxxxxxxxxxx"  # TODO: แทนที่ด้วย API Key จริง

# แสดงค่าที่ตั้งไว้
Write-Host "🎯 Model: $env:OPENCLAW_DEFAULT_MODEL" -ForegroundColor Green
Write-Host "🔑 API Key: $($env:DEEPSEEK_API_KEY.Substring(0,10))..." -ForegroundColor Green

# รัน OpenClaw
Write-Host "🚀 Starting OpenClaw with DeepSeek..." -ForegroundColor Cyan
openclaw