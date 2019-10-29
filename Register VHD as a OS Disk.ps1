# Register as a plan old data disk 
Add-AzureDisk -DiskName 'myosdisk' -MediaLocation $destinationVHD -Label 'myosdisk' -OS Windows # or Linux
