# Register as a plan old data disk 
Add-AzureDisk -DiskName 'mydatadisk' -MediaLocation $destinationVHD  -Label 'mydatadisk'
