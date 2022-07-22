New-Item -Path 'report.xml' -ItemType File
java -jar C:\tools\zap\zap-2.11.1.jar -cmd -quickurl http://demo.testfire.net -quickprogress -quickout report.xml

$xml =[xml](Get-Content ".\report.xml")
$alertitems=$xml.SelectNodes("/OWASPZAPReport/site/alerts/alertitem")

$info=0
$low=0
$medium=0
$high=0


foreach ($alertitem in $alertitems){
    if($alertitem.riskcode -eq 0)
    {
        $info=$info+$alertitem.Count
    }

    if($alertitem.riskcode -eq 1)
    {
        $low=$low+$alertitem.Count
    }

    if($alertitem.riskcode -eq 2)
    {
        $medium=$medium+$alertitem.Count
    }

    if($alertitem.riskcode -eq 0)
    {
        $high=$high+$alertitem.Count
    }


}

Write-Host "High Vulnerabilities:"$high

Write-Host "Medium Vulnerabilities:"$medium

Write-Host "Low Vulnerabilities:"$low

Write-Host "Info Vulnerabilities:"$info



if($high -gt 0 -Or $medium -gt 0 )
{

  Write-Host "There are vulnerbailities in your application, Please fix them.."
  exit 1

}

else
 
{

  Write-Host "Your application received signoff for DAST.."

 
}
