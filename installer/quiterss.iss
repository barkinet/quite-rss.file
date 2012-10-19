; -- QuiteRSS.iss --

#define _AppName "QuiteRSS"
#define _AppVersion GetStringFileInfo("QuiteRSS.exe", FILE_VERSION)
#define _AppVerName GetStringFileInfo("QuiteRSS.exe", PRODUCT_VERSION)
#define _AppPublisher "QuiteRSS Team"

[Setup]
AppID={{372E76B7-3389-4057-B06A-53B104094844}
AppName={#_AppName}
AppVersion={#_AppVerName}
AppPublisher={#_AppPublisher}
VersionInfoVersion={#_AppVersion}
DefaultDirName={pf}\QuiteRSS
DefaultGroupName=QuiteRSS
Compression=lzma/Max
InternalCompressLevel=Max
SolidCompression=true
VersionInfoCompany={#_AppPublisher}
VersionInfoDescription={#_AppName} {#_AppVerName} Setup
MinVersion=5.0.2195
AppPublisherURL=http://code.google.com/p/quite-rss/
WizardImageFile=logo.bmp
WizardSmallImageFile=logo55.bmp
WizardImageStretch=false
WizardImageBackColor=clWhite
OutputDir=Setup
OutputBaseFilename=QuiteRSS_Setup
RestartIfNeededByRun=false
ShowTasksTreeLines=true
SetupIconFile=Setup.ico
LanguageDetectionMethod=locale
PrivilegesRequired=none

[Files]
Source: QuiteRSS.exe; DestDir: {app}; Flags: skipifsourcedoesntexist
Source: Data\*; DestDir: {app};
Source: Data\iconengines\*; DestDir: {app}\iconengines;
Source: Data\imageformats\*; DestDir: {app}\imageformats;
Source: Data\lang\*; DestDir: {app}\lang;
Source: Data\phonon_backend\*; DestDir: {app}\phonon_backend;
Source: Data\sound\*; DestDir: {app}\sound;
Source: Data\sqldrivers\*; DestDir: {app}\sqldrivers;

[Icons]
Name: {group}\{#_AppName}; Filename: {app}\QuiteRSS.exe; WorkingDir: {app}
Name: {userdesktop}\{#_AppName}; Filename: {app}\QuiteRSS.exe; WorkingDir: {app}
Name: {group}\{cm:UninstallProgram, {#_AppName}}; Filename: {uninstallexe}

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "dutch"; MessagesFile: "compiler:Languages\Dutch.isl"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"
Name: "French"; MessagesFile: "compiler:Languages\French.isl"
Name: "German"; MessagesFile: "compiler:Languages\German.isl"
Name: "Hungarian"; MessagesFile: "compiler:Languages\Hungarian.isl"
Name: "Italian"; MessagesFile: "compiler:Languages\Italian.isl"
Name: "Serbian"; MessagesFile: "compiler:Languages\SerbianCyrillic.isl"

[INI]
Filename: {app}\QuiteRSS.url; Section: InternetShortcut; Key: URL; String: http://code.google.com/p/quite-rss/

[UninstallDelete]
Type: files; Name: {app}\QuiteRSS.url

[Run]
Filename: "{app}\QuiteRSS.exe"; Description: "{cm:LaunchProgram,{#StringChange(_AppName, "&", "&&")}}"; Flags: nowait postinstall skipifsilent

[InnoIDE_Settings]
UseRelativePaths=true

