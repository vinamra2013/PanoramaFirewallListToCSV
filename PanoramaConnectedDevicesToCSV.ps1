Add-Type -AssemblyName System.Web
[Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12

#change directory
Set-Location "{output directory}"
$OutputCsvFile = "PaloAltoDevices.csv"
$PanoramaIPAddress = "{panorama fqdn or IP without HTTPS}"

#generate api key. https://docs.paloaltonetworks.com/pan-os/9-0/pan-os-panorama-api/get-started-with-the-pan-os-xml-api/get-your-api-key
$APIKey= "{Panorama API Key}"


$url = "https://{0}/api/?type=op&cmd=<show><devices><all><%2Fall><%2Fdevices><%2Fshow>&key={1}" -f $PanoramaIPAddress , $APIKey

Write-Host  "Fetching Data From Panorama API..."
$WebClient = New-Object system.Net.WebClient;
[System.Net.ServicePointManager]::ServerCertificateValidationCallback = {$true}

try
{
    $result= [Xml]$WebClient.downloadString($url)
    
    If ($result.response.status -eq 'success'){
        #Save Device Properties To CSV File
        $result.response.result.devices.entry | Export-Csv -Path $OutputCsvFile -NoTypeInformation
        
        $msg = "{0} Firewalls Found. Details Are Saved to CSV File: {1}" -f $result.response.result.devices.entry.count, $OutputCsvFile;
        Write-Host $msg

        
    }
}
Catch [System.Net.WebException]{
    Write-Host  'Invalid credentials.';
    
}
finally {
    #empty result variable at end. Important.
    $result = ""
}
