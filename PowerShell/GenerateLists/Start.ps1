$Topics = @(
   [pscustomobject]@{name='Repos'; path='E:/Repos'}
   [pscustomobject]@{name='Program Files'; path='C:/Program Files'}
   [pscustomobject]@{name='Program Files (x86)'; path='C:/Program Files (x86)'}
   [pscustomobject]@{name='Installers'; path='E:/Repos'}
   [pscustomobject]@{name='Portable'; path='E:/Repos'}
   [pscustomobject]@{name='Nerd Fonts'; path='E:/Repos'}
   [pscustomobject]@{name='Disks'; path='E:/Repos'}
   [pscustomobject]@{name='Courses'; path='E:/Repos'}
   [pscustomobject]@{name='TV Shows'; path='E:/Media/TV Shows'}
   [pscustomobject]@{name='Movies'; path='E:/Media/Movies'}
   [pscustomobject]@{name='Steam'; path='E:/Games/Steam/steamapps/common'}
   [pscustomobject]@{name='Games'; path='E:/Games'}
)

$SaveLocation = "$pwd\Lists"
$ProgramFiles = Get-ChildItem "C:\Program Files" | ForEach-Object { $_.Name }
$ProgramFiles86 = Get-ChildItem "C:\Program Files (x86)" | ForEach-Object { $_.Name }
$Installers = Get-ChildItem D:\Installers | ForEach-Object { $_.Name }
$Portable = Get-ChildItem D:\Portable | ForEach-Object { $_.Name }
$NerdFonts = Get-ChildItem "D:\Nerd Fonts" | ForEach-Object { $_.Name }
$Disks = Get-ChildItem E:\Disks | ForEach-Object { $_.Name }
$Courses = Get-ChildItem E:\Courses | ForEach-Object { $_.Name }
$TVShows = Get-ChildItem "E:\Media\TV Shows" | ForEach-Object { $_.Name }
$Movies = Get-ChildItem E:\Media\Movies | ForEach-Object { $_.Name }
$Games = Get-ChildItem E:\Games | ForEach-Object { $_.Name }
$Steam = Get-ChildItem E:\Games\Steam\steamapps\common | ForEach-Object { $_.Name }
$Repos = Get-ChildItem E:\Repos | ForEach-Object { $_.Name }

"Program Files" > $SaveLocation
"------------" >> $SaveLocation
$ProgramFiles >> $SaveLocation
"`n" >> $SaveLocation
"Program Files (x86)" >> $SaveLocation
"------------------" >> $SaveLocation
$ProgramFiles86 >> $SaveLocation
"`n" >> $SaveLocation
"Installers" >> $SaveLocation
"------------------" >> $SaveLocation
$Installers >> $SaveLocation
"`n" >> $SaveLocation
"Portable" >> $SaveLocation
"------------------" >> $SaveLocation
$Portable >> $SaveLocation
"`n" >> $SaveLocation
"Nerd Fonts" >> $SaveLocation
"------------------" >> $SaveLocation
$NerdFonts >> $SaveLocation
"`n" >> $SaveLocation
"Disks" >> $SaveLocation
"------------------" >> $SaveLocation
$Disks >> $SaveLocation
"`n" >> $SaveLocation
"Courses" >> $SaveLocation
"------------------" >> $SaveLocation
$Courses >> $SaveLocation
"`n" >> $SaveLocation
"TV Shows" >> $SaveLocation
"------------------" >> $SaveLocation
$TVShows >> $SaveLocation
"`n" >> $SaveLocation
"Movies" >> $SaveLocation
"------------------" >> $SaveLocation
$Movies >> $SaveLocation
"`n" >> $SaveLocation
"Games" >> $SaveLocation
"------------------" >> $SaveLocation
$Games >> $SaveLocation
"`n" >> $SaveLocation
"Steam" >> $SaveLocation
"------------------" >> $SaveLocation
$Steam >> $SaveLocation
"`n" >> $SaveLocation
"Repos" >> $SaveLocation
"------------------" >> $SaveLocation
$Repos >> $SaveLocation
