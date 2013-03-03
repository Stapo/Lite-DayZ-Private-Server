Lite DayZ Private Server
========================

Requirements
------------

 - Microsoft Windows (Tested with 7 and Server 2008)
 - ArmA 2 Combined Operations Dedicated Server (Steam users must merge ArmA2 and ArmA2 OA Directories)
 - Latest [**ArmA 2 Operation Arrowhead Beta Patch**] (http://www.arma2.com/beta-patch.php)
 - [**MySQL Server 5.5.x Installed, Click This Link For Instructions On How To Install MySQL Server**] (https://github.com/Stapo/Lite-DayZ-Private-Server/wiki/MySQL-Server-Installation)
 - MySQL Database program such as [**Navicat For MySql**] (http://www.navicat.com/en/download/download.html) or [**HeidiSQL**] (http://www.heidisql.com/download.php)
 - [**Microsoft Visual C++ 2010 SP1 x86 Redistributable**] (http://www.microsoft.com/en-us/download/details.aspx?id=8328)

Installation
------------

 **Note:** Steps with a **X** infront of them are optional.

 1. Using one of the MySQL Database Programs you downloaded, connect to your mysql server using these details (Note: The "ROOTPASSWORD" is the password you set for the root user when you installed mysql server).
 
		Connection Name: WHATEVERYOUWANT
		Host Name/IP Address: localhost
		Port: 3306
		User Name: root
		Password: ROOTPASSWORD

 2. Create a new database (call it whatever you want e.g. dayz)
 3. **X** Create a new user by running this query in your database you just created 
 
		create user 'YOURNEWUSERNAME'@'localhost' identified by 'ROOTPASSWORD';
		grant all privileges on YOURDATABASENAME.* to 'YOURNEWUSERNAME'@'localhost';
		
 4. Extract all the contents of this repo into your Arma 2 Combined Operations directory.
 5. Execute `Server_Setup.bat`.
 6. Enter your MySQL login information (Note: Default username is root).
 7. Enter the [**Mod Code**] (https://github.com/Stapo/Lite-DayZ-Private-Server#mod-codes) for the mod you would like to use.
 8. Wait until you see "Server Setup Complete", Then press enter.
 9. Configure your hive settings (username, password, database, time and date) by editing `Config_<Mod Name>`/`HiveEXT.ini`.
 10. Configure all the settings of your server by editing `Config_<Mod Name>`/`ServerSettings.cfg`.
 11. **X** Configure your Rcon password/max ping by editing `Config_<Mod Name>`/`BEServer.cfg`.
 12. Execute `Start_<Mod Name>_Server.bat`.
 13. Wait for the ArmA II Server Console to appear.
 14. Go and join your server!
 
Mod Codes
---------

 **Note:** The mod which you would like to use must be installed prior to installing the server, this can be done by downloading most of them with [**DayZCommander**] (http://www.dayzcommander.com).

<table>
  <tr>
    <td>Mod Code</td><td>Mod Name</td><td>Supported Version</td><td>Direct Link</td>
  </tr>
  <tr>
    <td>chernarus</td><td>DayZ</td><td>1.7.6.1</td><td><b><a href="http://cdn.dayz.st/dayzcommander/DayZ-1.7.6.1.rar" >Download</a></b></td>
  </tr>
  <tr>
    <td>namalsk</td><td>DayZ Namalsk</td><td>0.74</td><td><b><a href="http://cdn.dayz.st/dayzcommander/DayZNamalsk-0.7.4.rar" >Download</a></b></td>
  </tr>
  <tr>
    <td>plus</td><td>DayZ+</td><td>1.1.2</td><td><b><a href="http://cdn.dayz.st/dayzcommander/DayZPlus-1.1.2.rar" >Download</a></b></td>
  </tr>
  <tr>
    <td>2017</td><td>DayZ 2017</td><td>1.1</td><td><b><a href="http://cdn.dayz.st/dayzcommander/DayZ2017-1.1.rar" >Download</a></b></td>
  </tr>
  <tr>
    <td>sahrani</td><td>DayZ Sahrani</td><td>0.1</td><td><b><a href="http://5.135.153.158/@DayZ_Sahrani.rar" >Download</a></b></td>
  </tr>
  <tr>
    <td>isladuala</td><td>DayZ Isladuala</td><td>1.1</td><td><b><a href="http://cdn.dayz.st/dayzcommander/DayZIsladuala-1.1.rar" >Download</a></b></td>
  </tr>
  <tr>
    <td>thirsk</td><td>DayZ Thirsk</td><td>1.3</td><td><b><a href="http://cdn.dayz.st/dayzcommander/DayZThirsk-1.3.rar" >Download</a></b></td>
  </tr>
  <tr>
    <td>thirskwinter</td><td>DayZ Thirsk Winter</td><td>1.3</td><td><b><a href="http://cdn.dayz.st/dayzcommander/DayZThirsk-1.3.rar" >Download</a></b></td>
  </tr>
  <tr>
    <td>lingor</td><td>DayZ Lingor</td><td>2.1</td><td><b><a href="http://cdn.dayz.st/dayzcommander/DayZLingorSkaronator-2.1.rar" >Download</a></b></td>
  </tr>
  <tr>
    <td>celle</td><td>DayZ Celle</td><td>1.9</td><td><b><a href="http://cdn.dayz.st/dayzcommander/DayzCelle-1.9.rar" >Download</a></b></td>
  </tr>
  <tr>
    <td>fallujah</td><td>DayZ Fallujah</td><td>1.5</td><td><b><a href="http://cdn.dayz.st/dayzcommander/DayZFallujah-1.5.rar" >Download</a></b></td>
  </tr>
  <tr>
    <td>panthera</td><td>DayZ Panthera</td><td>1.8</td><td><b><a href="http://cdn.dayz.st/dayzcommander/DayZPanthera-1.8.rar" >Download</a></b></td>
  </tr>
  <tr>
    <td>takistan</td><td>DayZ Takistan</td><td>1.7</td><td><b><a href="http://cdn.dayz.st/dayzcommander/DayZTakistan-1.7.rar" >Download</a></b></td>
  </tr>
  <tr>
    <td>utes</td><td>DayZ Utes</td><td>1.3</td><td><b><a href="http://cdn.dayz.st/dayzcommander/DayZUtes-1.3.rar" >Download</a></b></td>
  </tr>
  <tr>
    <td>zargabad</td><td>DayZ Zargabad</td><td>1.5</td><td><b><a href="http://cdn.dayz.st/dayzcommander/DayZZargabad-1.5.rar" >Download</a></b></td>
  </tr>
  <tr>
    <td>oring</td><td>DayZ Oring</td><td>1.0.8</td><td><b><a href="http://deoring.dayzfiles.com/DayZOring-1.0.8.rar" >Download</a></b></td>
  </tr>
</table>

Known Bugs
----------

 - If you find any bugs or have any issues related to this server pack, please submit them [**here**] (https://github.com/Stapo/Lite-DayZ-Private-Server/issues).

Common Issues
-------------

**Problem**: Server crashes when the first player connects.					
**Solution**: Ensure that you have `HiveEXT.dll` in your `Server_<Mod Name>` Folder.

**Problem**: Server not shown on the in-game browser or on third-party server browsers (DayZCommander, PlayWithSIX etc.)       
**Solution**: Ensure the game ports (Default: 2302 - 2305 UDP) are forwarded properly. 

**Problem**: "Bad CD Key" messages.
**Solution**: Buy the game.

Donate
------

 - This server pack is completely free although if you would like to show you support, you can feel free to donate [**here**] (https://www.paypal.com/cgi-bin/webscr?cmd=_donations&business=stapo19%40hotmail%2ecom&lc=AU&item_name=Stapo%27s%20Development&currency_code=USD&bn=PP%2dDonationsBF%3abtn_donateCC_LG%2egif%3aNonHosted).
