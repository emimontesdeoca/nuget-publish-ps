<p align="center">
	<img src="http://upload.wikimedia.org/wikipedia/commons/thumb/2/25/NuGet_project_logo.svg/364px-NuGet_project_logo.svg.png" width="100px;" height="100px" />
	<img top="20px" src="https://3.bp.blogspot.com/-a7jPVdFk9Hw/W_XeTJX6JyI/AAAAAAAAC2c/HCtxP0wSSs0wEMKJOYq7pivEJaSVin92gCLcBGAs/s1600/powershell.png" width="100px;" height="100px" />
</p>

<h1 align="center">publish-nuget-ps</h1>
<p align="center">Publish NuGet packages with a simple PowerShell script</p>


## Setup

1. Download [NuGet](https://www.nuget.org/downloads) from the official NuGet's downloads page.
2. Go to the downloaded `nuget.exe` path.
3. Get apikey from [NuGet](https://www.nuget.org/account/apikeys) page.
4. In the same folder where the `nuget.exe` is, run command `nuget.exe setapikey <your key here>` in cmd or PowerShell.
5. Download `publish.ps1` from [releases](https://github.com/emimontesdeoca/nuget-publish-ps/releases).
6. Copy the `publish.ps1` to the folder where the solution `.sln` file is.
7. Run the script.

## Script

```
rm -r bin
dotnet clean
dotnet build -c Release
dotnet test
dotnet pack -c Release
dotnet nuget push bin\Release\*.nupkg -s "https://nuget.org"
rm -r bin


```
