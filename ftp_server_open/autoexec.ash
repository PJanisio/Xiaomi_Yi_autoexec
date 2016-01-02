#runs ftp server ftp://192.168.42.1/
#author: nutsey & nikulin

sleep 2
lu_util exec 'nohup tcpsvd -u root -vE 0.0.0.0 21 ftpd -w / >> /dev/null 2>&1 &'
