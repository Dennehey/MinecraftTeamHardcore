# Minecraft Team Hardcore - You die, we die

This mod/script will cause the server on *any* player death to delete the world(s) associated with that instance, and restart the server, creating a new map to try all over again on.  Like hardcore Minecraft but you have to hope your friends don't die too!  


This script is paired with bukkit/spigot and custom death message mod ( https://dev.bukkit.org/projects/custom-death-messages )- it's possible new death types will not be captured given this scripts reliance on the death message outputted to the log. If anyone knows of a way to trigger a script from inside MC or to do this better I am all ears!


# Install Instructions

 * Follow https://www.spigotmc.org/wiki/buildtools/
   * Generally, download https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar
   * and run "java -jar BuildTools.jar" from the command line where BuildTools.jar is/where you want your server
 * Pull this repo into your folder
 * Launch start_server.bat
 * launch the powershell script (from within powershell, not cmd) with ./WatchLog.ps1 from your server folder

# NOTE
This process uses the command "Stop-Process -Name "java" -Force"

If you're someone who is running multiple instances, or has other things running Java, that command may do exactly as advertised on the wrong thing
