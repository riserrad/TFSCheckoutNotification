; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "TFS Checkout Notification"
#define MyAppVersion "1.0"
#define MyAppPublisher "Ricardo Serradas"
#define MyAppURL "http://blog.ricardoserradas.net"
#define MyAppExeName "TfsCheckoutNotification.exe"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{7731CFD9-94E1-4088-8BA2-9DC16EFF09F6}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={pf}\Ricardo Serradas\{#MyAppName}
DefaultGroupName={#MyAppName}
DisableProgramGroupPage=yes
OutputBaseFilename=tfscheckoutnotification_install
Compression=lzma
SolidCompression=yes
PrivilegesRequired=admin

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "..\Solution\TfsCheckoutNotification.App\bin\Debug\TfsCheckoutNotification.exe"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\Solution\TfsCheckoutNotification.App\bin\Debug\Microsoft.TeamFoundation.Client.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\Solution\TfsCheckoutNotification.App\bin\Debug\Microsoft.TeamFoundation.VersionControl.Client.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\Solution\TfsCheckoutNotification.App\bin\Debug\Microsoft.TeamFoundation.WorkItemTracking.Client.DataStoreLoader.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\Solution\TfsCheckoutNotification.App\bin\Debug\Microsoft.WITDataStore.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\Solution\TfsCheckoutNotification.App\bin\Debug\System.Net.Http.Formatting.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\Solution\TfsCheckoutNotification.App\bin\Debug\System.Web.Http.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\Solution\TfsCheckoutNotification.App\bin\Debug\TfsCheckoutNotification.exe.config"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{group}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

[Registry]
Root: "HKLM"; Subkey: "SOFTWARE\Microsoft\Windows\CurrentVersion\Run"; ValueType: string; ValueName: "TFSCheckoutNotification"; ValueData: """{app}\{#MyAppExeName}"""; Flags: uninsdeletevalue
