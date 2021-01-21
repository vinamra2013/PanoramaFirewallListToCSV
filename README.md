# PanoramaFirewallListToCSV
This Powershell script extracts list of panorama managed firewalls and save details into CSV file.

# Usage
Easiest way to run this ps1 script is to copy paste it in notepad and update the variables and paste it in powershell. sometime due to enterprise policies ps1 files are not allowed to execute.

C:\Users\testuser\Documents> .\PanoramaConnectedDevicesToCSV.ps1
Fetching Data From Panorama API...
2 Firewalls Found. Details Are Saved to CSV File: PaloAltoDevices.csv



## Generate API Key
Follow this document to generate API key.
https://docs.paloaltonetworks.com/pan-os/9-0/pan-os-panorama-api/get-started-with-the-pan-os-xml-api/get-your-api-key

# Output
The Script extracts following properties and saves it to a csv file.
* name
* serial
* connected
* unsupported-version
* deactivated
* hostname
* ip-address
* ipv6-address
* uptime
* family
* model
* sw-version
* app-version
* av-version
* wildfire-version
* threat-version
* url-db
* url-filtering-version
* logdb-version
* global-protect-client-package-version
* prev-app-version
* prev-av-version
* prev-threat-version
* prev-wildfire-version
* domain
* is-dhcp
* vpn-disable-mode
* operational-mode
* certificate-status
* certificate-subject-name
* certificate-expiry
* connected-at
* custom-certificate-usage
* multi-vsys
* vsys
* device-cert-present
* device-cert-expiry-date

# Example Output CSV
name,serial,connected,unsupported-version,deactivated,hostname,ip-address,ipv6-address,uptime,family,model,sw-version,app-version,av-version,wildfire-version,threat-version,url-db,url-filtering-version,logdb-version,global-protect-client-package-version,prev-app-version,
prev-av-version,prev-threat-version,prev-wildfire-version,domain,is-dhcp,vpn-disable-mode,operational-mode,certificate-status,certificate-subject-name,certificate-expiry,connected-at,custom-certificate-usage,multi-vsys,vsys,device-cert-present,device-cert-expiry-date
12345678,12345678,yes,no,no,LabPaloAlto1,172.16.1.1,unknown,"31 days, 1:34:40",vm,PA-VM,8.1.16,8364-6497,0,524895-527899,8364-6497,paloaltonetworks,20210115.2,8.1.8,0.0.0,8362-6491,0,8362-6491,524892-527896,,yes,no,normal,,12345,8/1/2020 20:05,12/27/2020 15:15,no,no,Syst
em.Xml.XmlElement,None,N/A
124335678,124335678,yes,no,,LabPaloAlto2,172.16.2.1,unknown,"785 days, 18:59:47",vm,PA-VM,8.1.16,8365-6501,3591-4102,0,8365-6501,paloaltonetworks,20210115.2,8.1.8,0.0.0,,,,,,,no,normal,,1234345,4/1/2029 11:24,12/17/2020 2:59,no,no,System.Xml.XmlElement,,N/A
