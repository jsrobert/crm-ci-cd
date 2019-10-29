import-module azure
select-azuresubscription "mysubscriptionname"
 
$sourceVHD = "D:\StorageDemos\myvhd.vhd"
$destinationVHD = "https://mwwestus1.blob.core.windows.net/uploads/myvhd.vhd"
 
Add-AzureVhd -LocalFilePath $sourceVHD -Destination $destinationVHD -NumberOfUploaderThreads 5
