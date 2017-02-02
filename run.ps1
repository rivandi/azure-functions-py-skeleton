$ProjectName = "\TimerTriggerPowerShell1"
$BaseDir = "D:\home\site\wwwroot"
$EnvActivator = "\env\Scripts\activate.bat"
cd $($BaseDir + $ProjectName)
$VenvExists = Test-Path $EnvActivator
If($VenvExists -eq $False){
	D:\Python27\Scripts\virtualenv.exe env
}
Get-ChildItem $($BaseDir + $ProjectName + "\whl") -Filter *.whl | 
Foreach-Object {
    .\env\Scripts\pip.exe install $_.FullName
}
.\env\Scripts\python.exe src\run.py