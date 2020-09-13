# System Status
This is a bash script to send email at midnight of status of all services, error logs and warnings.

## Running the Script
- If using Gmail, ensure less secure app access is enabled
- Ensure that ssmtp is installed and configured properly. Following steps can be followed to do the same:
  
  1. Run the following installations
   
      `sudo apt install ssmtp`
      `sudo apt install mailutils`
  2. `sudo vim /etc/ssmtp/ssmtp.conf`
    Enter your account settings as follows

            root=sendermail@gmail.com
            mailhub=smtp.gmail.com:587
            rewriteDomain=gmail.com
            hostname=yourlocalhost.yourlocaldomain.tld
            TLS_CA_FILE=/etc/ssl/certs/ca-certificates.crt
            UseTLS=Yes
            UseSTARTTLS=Yes
            AuthUser=sendermail@gmail.com
            AuthPass=senderPassword
            AuthMethod=LOGIN
            FromLineOverride=Yes


## Learnings
- Configuring and using ssmtp
- Scanning and analyzing log files in linux

## References
- [SSMTP Wiki](https://wiki.archlinux.org/index.php?title=SSMTP)