if (!(Test-Path ".nuget\nuget.exe")) {
	New-Item -ItemType directory -Path .nuget
	
	$MyFolder=get-item .\.nuget -Force
	$MyFolder.attributes="Hidden"
	
	Invoke-WebRequest -OutFile .nuget\nuget.exe https://dist.nuget.org/win-x86-commandline/latest/nuget.exe
}

Remove-Item bin\Release\*.nupkg

dotnet pack -c Release

.nuget\nuget push *.nupkg -Source "https://nuget.org"

Remove-Item bin\Release\*.nupkg

