DayZ Private Server Lite
========================

Requirements
-------------

 - Microsoft Windows (Tested with 7 and Server 2008)
 - ArmA 2 Combined Operations Dedicated Server (Steam users must merge ArmA2 and ArmA2 OA Directories)
 - Latest ArmA 2 Operation Arrowhead Beta Patch (http://www.arma2.com/beta-patch.php)
 - MySQL Server 5.5.x With TCP/IP Networking enabled using Port 3306 (http://dev.mysql.com/downloads/mysql/)
 - MySQL Database program such as Navicat or HeidiSQL (http://www.navicat.com/en/download/download.html) (http://www.heidisql.com/download.php)
 - Microsoft Visual C++ 2010 SP1 x86 Redistributable (http://www.microsoft.com/en-us/download/details.aspx?id=8328)

Installation
------------

 NOTE: Steps with a **X** infront of them are optional.

 1. Create a new database (call it whatever you want e.g. dayz)
 2. **X** Create a new user by running this query (Note: The "ROOTPASSWORD" is the password you set for the root user when you installed mysql server)
 
		create user 'YOURDATABASENAME'@'localhost' identified by 'ROOTPASSWORD';
		grant all privileges on YOURDATABASENAME.* to 'YOURDATABASENAME'@'localhost';
		
 3. Extract all the contents in this repo into your Arma 2 Combined Operations directory.
 4. Execute `Server_Setup.bat`
 5. Enter your MySQL login information (Note: Default user is root)
 6. Enter the **Mod Code** for the mod you would like to use.
 7. Enter the **Extra Code** for the extras you would like to use.
 8. Configure your hive settings (username, password, database, time and date) by editing Config_`<Mod Name>`/`HiveEXT.ini`
 9. Configure all the settings of your server by editing Config_`<Mod Name>`/`ServerSettings.cfg`
 10. **X** Configure your Rcon password/max ping by editing Config_`<Mod Name>`/`BEServer.cfg`
 11. Execute `Start Server.bat`
 12. Enter your MySQL login information again. (Note: if you use FireDeamon for starting your server, i adivise you make another batch file to start the server using [this example] (https://github.com/Stapo/Lite-Repo/raw/master/Example_Start_Server.bat).)
 13. Wait for the ArmA II Server Console to appear.
 14. Go and join your server!
 
Mod Codes
---------

 NOTE: Which ever mod you will be using must be installed prior to installing the server (Preferbly by downloading them through DayZCommander).

<table>
  <tr>
    <td>Mod Code</td><td>Mod Name</td><td>Supported Version</td>
  </tr>
  <tr>
    <td>chernarus</td><td>DayZ</td><td>1.7.4.4</td>
  </tr>
  <tr>
    <td>namalsk</td><td>DayZ Namalsk</td><td>0.73</td>
  </tr>
  <tr>
    <td>plus</td><td>DayZ+</td><td>1.1.2</td>
  </tr>
  <tr>
    <td>2017</td><td>DayZ 2017</td><td>1.1</td>
  </tr>
  <tr>
    <td>sahrani</td><td>DayZSahrani</td><td>0.1</td>
  </tr>
  <tr>
    <td>isladuala</td><td>DayZ Isladuala</td><td>1.1</td>
  </tr>
  <tr>
    <td>thirsk</td><td>DayZ Thirsk</td><td>1.3</td>
  </tr>
  <tr>
    <td>thirskwinter</td><td>DayZ Thirsk Winter</td><td>1.3</td>
  </tr>
</table>

Extras Codes
------------

 NOTE: Not all mods support all the extras, this may change in future.

<table>
  <tr>
    <td>Extra Code</td><td>Extra Name</td>
  </tr>
  <tr>
    <td>none</td><td>No Extas</td>
  </tr>
  <tr>
    <td>carepkgs</td><td>Care Packages</td>
  </tr>
  <tr>
    <td>wrecks</td><td>Wrecks</td>
  </tr>
  <tr>
    <td>killmsgs</td><td>Kill Messages</td>
  </tr>
  <tr>
    <td>combo1</td><td>Care Packages and Wrecks</td>
  </tr>
  <tr>
    <td>combo2</td><td>Care Packages and Kill Messages</td>
  </tr>
  <tr>
    <td>combo3</td><td>Wrecks and Kill Messages</td>
  </tr>
  <tr>
    <td>combo4</td><td>Care Packages, Wrecks and Kill Messages</td>
  </tr>
</table>

Known Bugs
----------

 - If you find any bugs or have any issues related to this server pack, please submit them [here] (https://github.com/Stapo/DayZ-Private-Server-Lite/issues).

Common Issues
-------------

**Problem**: Server crashes when the first player connects	
**Solution**: Ensure that you have `HiveEXT.dll` in your **@Server** Folder.

**Problem**: Server not shown on the in-game browser or on third-party server browsers (DayZCommander etc.)       
**Solution**: Ensure the game ports (Default: 2302 - 2305 UDP) are forwarded properly. 

**Problem**: "Bad CD Key" messages	
**Solution**: Buy the game.

Donate
------

 - This server pack is completely free although if you would like to show you support, you can feel free to donate [here] (https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=stapo19%40hotmail%2ecom&lc=AU&item_name=Stapo%27s%20Development&currency_code=USD&bn=PP%2dDonationsBF%3abtn_donateCC_LG%2egif%3aNonHosted).
