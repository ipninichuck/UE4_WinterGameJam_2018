#Download Zip file and extract it
 echo "**Downloading Sysmon**"
 iwr -Uri 'https://download.sysinternals.com/files/Sysmon.zip' -OutFile 'C:\Program Files\Sysmon.zip
 expand-archive -path 'C:\Program Files\Sysmon.zip
 
 
 #Copy Sysmon Config to the working directory
 cp 'sysmon\config.xml' 'C:\Program Files\Sysmon
 cd C:\Program Files\Sysmon
 
 #Start Sysmon
 echo "**Starting Sysmon**"
 sysmon.exe -accepteula -i config.xml -h md5,sha256,imphash -l -n