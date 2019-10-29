REM batch file to copy Azure Blob for one account to another. 

REM https://vt7e9bjerobereus.blob.core.windows.net/vtdisks/jeroberCRM2015.vhd
REM https://vt7e9bjerobereus.blob.core.windows.net/vtdisks/jeroberCRM2011.vhd

REM portalvhds5zwstksj6yk81
REM portalvhds5zwstksj6yk81
REM portalvhdssgcbw58806756

REM 0MXFjiVWtGEXqSDH2HgiPBi0espO4EApPzU/NfsDMUXO15Cr2DFoviolv/baXGIivjC4zv8YkrUaD0LQ8aYWcA==

cd "C:\Program Files (x86)\Microsoft SDKs\Azure\AzCopy"
AzCopy /Source:https://vt7e9bjerobereus.blob.core.windows.net/vtdisks /Dest:https://portalvhdssgcbw58806756.blob.core.windows.net/vhds /SourceKey:mPnugYUzlY+olBXnMtMoh9vL0J1XbyMoWtV2RMQbUrBR+Qc80qfK4Uh0CkZc5fySWwn8DMspE12djFdbbBo1LA== /DestKey:0MXFjiVWtGEXqSDH2HgiPBi0espO4EApPzU/NfsDMUXO15Cr2DFoviolv/baXGIivjC4zv8YkrUaD0LQ8aYWcA== /S