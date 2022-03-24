@ECHO OFF

REM Get to the correct directory - needs to be created before running script
ECHO Directory:
SET /P Directory=

REM Move to te directory
cd "%Directory%"

REM name of your project
ECHO ProjName:
SET /p ProjName=

REM Get the app type, i.e. console, etc.
ECHO AppType:
SET /p AppType=

REM Make the new solution file and project
dotnet new sln

REM Make the new application in a subdirectory based on the project name
dotnet new %AppType% --output "%Directory%\%ProjName%"

REM Add the project to the solution file
dotnet sln add "%Directory%\%ProjName%"

REM Pause so console doesn't close so that the user can still make sure the commands work
REM remove this if not wanted.
PAUSE