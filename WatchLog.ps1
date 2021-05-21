while($true)
{
    Write-Host "Watching Server.Log"
    sleep -sec 10
    $now = Get-Date
    $fileName = 'server.log'
    Get-Content $fileName -wait | where {$_ -match "\[Server thread\/INFO\]: [^\s]+ has killed us all!"} | 
      foreach { 
          sleep -sec 5
          Write-Host "Stop server!"
          Stop-Process -Name "java" -Force
          
          sleep -sec 5
          Write-Host "Delete World!"
          Remove-Item -LiteralPath "C:\MinecraftServer\world" -Force -Recurse
          Remove-Item -LiteralPath "C:\MinecraftServer\world_nether" -Force -Recurse
          Remove-Item -LiteralPath "C:\MinecraftServer\world_the_end" -Force -Recurse
          Write-Host "Restart Server!"
          Start-Process start_server.bat
          
        }
}
