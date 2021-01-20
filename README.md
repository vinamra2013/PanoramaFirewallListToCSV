# PanoramaFirewallListToCSV
This Powershell script extracts list of panorama managed firewalls and save details into CSV file.

# Script Execution
Easiest way to run this ps1 script is to copy paste it in notepad and update the variables and paste it in powershell. sometime due to enterprise policies ps1 files are not allowed to execute.

## Generate API Key
Follow this document to generate API key.
https://docs.paloaltonetworks.com/pan-os/9-0/pan-os-panorama-api/get-started-with-the-pan-os-xml-api/get-your-api-key

# Output
the Script extracts following Properties
name
serial
connected
unsupported-version
deactivated
hostname
ip-address
ipv6-address
uptime
family
model
sw-version
app-version
av-version
wildfire-version
threat-version
url-db
url-filtering-version
logdb-version
global-protect-client-package-version
prev-app-version
prev-av-version
prev-threat-version
prev-wildfire-version
domain
is-dhcp
vpn-disable-mode
operational-mode
certificate-status
certificate-subject-name
certificate-expiry
connected-at
custom-certificate-usage
multi-vsys
vsys
device-cert-present
device-cert-expiry-date
