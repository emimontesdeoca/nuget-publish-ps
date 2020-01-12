rm -r bin

dotnet clean
dotnet build -c Release
dotnet test
dotnet pack -c Release
dotnet nuget push bin\Release\*.nupkg -s "https://nuget.org"

rm -r bin

