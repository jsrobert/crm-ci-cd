import-module azure

$subscriptionName = "Microsoft Azure Internal Consumption - jerober"
$sourceVHD = "D:\Hyper-V\Windows8.1\Virtual Hard Disks\Windows8.1.vhd"
$destinationVHD = "https://portalvhdssgcbw58806756.blob.core.windows.net/vhds/Windows8.1.vhd" 
$diskName = "'Windows8.x"


select-azuresubscription $subscriptionName
 
Add-AzureVhd -LocalFilePath $sourceVHD -Destination $destinationVHD -NumberOfUploaderThreads 5

# Register as an OS disk 
Add-AzureDisk -DiskName $diskName -MediaLocation $destinationVHD -Label 'Windows 8.x' -OS Windows # or Linux

New-AzureVMConfig -DiskName $diskName -Name 'Windows81' -InstanceSize Small |
    New-AzureVM -ServiceName 'Windows81' -Location 'East US'
