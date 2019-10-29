New-AzureVMConfig -DiskName 'myosdisk' -Name 'myvm1' -InstanceSize Small 
    Add-AzureDataDisk -Import -DiskName 'mydatadisk' -LUN 0 
    New-AzureVM -ServiceName 'mycloudsvc' -Location 'West US'
