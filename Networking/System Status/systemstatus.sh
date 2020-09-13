#!/bin/bash
FILE=servicelogs
receiver_email=username@domain.com
echo -e "Services Status\n" > $FILE
echo "+ indicates the service is running" >> $FILE 
echo "- indicates the service is stopped" >> $FILE
service --status-all >> $FILE

echo -e  "\n\nError Logs\n" >> $FILE
cat /var/log/apache2/error.log >> $FILE 

common_warns=(
    fail
    denied
    segfault
    segmentation
    rejected
    warn
)
echo -e "\nWARNINGS" >> "$FILE"
for warn in "${common_warns[@]}"; do
  grep -i "$warn" /var/log/syslog >> "$FILE"
done

mail -s "System Status `$DATE`" receiver_email << servicelogs
