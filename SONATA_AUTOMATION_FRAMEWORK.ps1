#Execute following command Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
$RootExecution = ($MyInvocation.MyCommand.Path | Split-Path | Resolve-Path).ProviderPath
$InitialPath = "C:\Repository\python\robot\sonataservices.com\resources"
$RobotFile = "Automation.robot"
$RepoPath = "C:\Repository\python\robot\sonataservices.com\Reports"
$RepoFile = "Test"
$date =  Get-Date -format HH:mm

function Run-Framework ($path, $file, $repopath, $repofile) {
    #Write-Host $path;
    #Write-Host $date;
    $script = $path + "\" + $file
    $repo = $repopath + "\" + $repofile + ".xml"
    Write-Host $repopath
    Write-Host $repo
    Write-Host "Load Sonata Website Automation Testing Framework ..."
    & 'robot' -d $repopath -o $repo $script 
} 

Run-Framework $InitialPath $RobotFile $RepoPath $RepoFile;