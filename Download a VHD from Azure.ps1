select-azuresubscription "mysubscriptionname"
 
$sourceVHD = "https://mwwestus1.blob.core.windows.net/uploads/mydatadisk.vhd"
$destinationVHD = "D:\StorageDemos\mydatadisk-downloaded.vhd"
 
Save-AzureVhd -Source $sourceVHD -LocalFilePath $destinationVHD -NumberOfThreads 5
