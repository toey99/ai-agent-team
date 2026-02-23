# วิธีใช้: เปิด PowerShell ใหม่ แล้วรันคำสั่งนี้ทั้งหมด

# Step 1: ใส่ API Key ของคุณตรงนี้
$env:DEEPSEEK_API_KEY="sk-xxxxxxxxxxxxxxxx"  # <-- แทนที่ด้วย API Key จริง
$env:OPENCLAW_DEFAULT_MODEL="deepseek/deepseek-chat"

# Step 2: ตรวจสอบค่า
Write-Host "✅ Model: $env:OPENCLAW_DEFAULT_MODEL" -ForegroundColor Green
Write-Host "✅ API Key Set: $(if($env:DEEPSEEK_API_KEY){'YES'}else{'NO'})" -ForegroundColor Green

# Step 3: รีเซ็ต OpenClaw Session (ถ้ากำลังรันอยู่)
openclaw sessions close agent:main:main 2>$null
openclaw sessions close agent:main:discord:channel:1468 2>$null
Start-Sleep -Seconds 2

# Step 4: เปิด OpenClaw ใหม่ด้วย DeepSeek
Write-Host "🚀 Starting OpenClaw with DeepSeek..." -ForegroundColor Cyan
openclaw

# Step 5: ตรวจสอบ Status (รอ 5 วินาที แล้วรันอีกครั้ง)
Start-Sleep -Seconds 5
Write-Host "`n📊 Checking status..." -ForegroundColor Yellow
openclaw status