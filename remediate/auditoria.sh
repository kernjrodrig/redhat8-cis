#!/bin/bash
#mod8
#Informe hardening
filename="/tmp/redhat8-cis/hc_$(hostname)_$(date +%F-%T).txt"

{
    echo "Audit RHEL"
    echo "Fecha: $(date)"
    echo "Hostname: $(hostname)"
    echo
    echo "================================================================================"
     echo "Hostname:`hostname`  " 
     echo "  ================================================================================  " 
     echo "Versión de OS  " 
    cat /etc/os-release
    echo "  ===============================================================  " 
     echo "Versión de Kernel  " 
    uname -a  
     echo "  ================================================================================  " 
     echo "1.1.1.1 Ensure mounting of cramfs filesystems is disabled  " 
    modprobe -n -v cramfs | grep "^install" 
    echo "  ================================================================================  " 
     echo "1.1.5.1 Ensure separate partition exists for /var/log " 
    findmnt --kernel /var/log  
    echo "  ================================================================================  " 
     echo "1.1.5.2 Ensure nodev option set on /var/log partition  " 
    findmnt --kernel /var/log | grep nodev 
    echo "  ================================================================================  " 
     echo "1.1.5.3 Ensure noexec option set on /var/log partition " 
    findmnt --kernel /var/log | grep noexec 
    echo "  ================================================================================  " 
     echo "1.1.6.1 Ensure separate partition exists for /var/log/audit " 
    findmnt --kernel /var/log/audit 
    echo "  ================================================================================  " 
     echo "1.1.6.2 Ensure noexec option set on /var/log/audit partition " 
    findmnt --kernel /var/log/audit | grep noexec 
    echo "  ================================================================================  " 
     echo "1.1.6.3 Ensure nodev option set on /var/log/audit partition " 
    findmnt --kernel /var/log/audit | grep nodev   
    echo "  ================================================================================  " 
     echo "1.1.6.4   Ensure nosuid option set on /var/log/audit partition " 
    findmnt --kernel /var/log/audit | grep nosuid
    echo "  ================================================================================  " 
     echo "1.1.7.1   Ensure separate partition exists for /home " 
    findmnt --kernel /home
    echo "  ================================================================================  " 
     echo "1.1.7.2   Ensure nodev option set on /home partition " 
    findmnt --kernel /home | grep nodev
    echo "  ================================================================================  " 
     echo "1.1.7.3   Ensure nosuid option set on /home partition " 
    findmnt --kernel /home | grep nosuid
    echo "  ================================================================================  " 
     echo "1.1.7.4   Ensure usrquota option set on /home partition " 
    findmnt --kernel /home | grep usrquota
    echo "  ================================================================================  " 
     echo "1.1.7.5   Ensure grpquota option set on /home partition " 
    findmnt --kernel /home | grep grpquota
     echo "  ================================================================================  " 
     echo "1.1.9 Disable Automounting  " 
     rpm -q autofs  
     echo "  ================================================================================  " 
     echo "1.1.10 Disable USB Storage  " 
    modprobe -n -v usb-storage  
     echo "  ================================================================================  " 
     echo "1.2.3 Ensure gpgcheck is globally activated  " 
    grep ^gpgcheck /etc/dnf/dnf.conf  
     echo "  ================================================================================  "
     echo "1.7.1 Ensure message of the day is configured properly  " 
    stat /etc/motd
    ls /etc/motd  
     echo "  ================================================================================  " 
     echo "1.7.2 Ensure local login warning banner is configured properly  " 
    cat /etc/issue  
     echo "  ================================================================================  " 
     echo "1.7.3 Ensure remote login warning banner is configured properly  " 
    cat /etc/issue.net  
     echo "  ================================================================================  " 
     echo "1.7.4 Ensure permissions on /etc/motd are configured  " 
    stat /etc/motd
    ls /etc/motd
     echo "  ================================================================================  " 
     echo "1.7.5 Ensure permissions on /etc/issue are configured  " 
    stat /etc/issue  
     echo "  ================================================================================  " 
     echo "1.7.6 Ensure permissions on /etc/issue.net are configured  " 
    stat /etc/issue.net  
     echo "  ================================================================================  " 
     echo "2.1.1 Ensure time synchronization is in use  " 
    rpm -q chrony  
     echo "  ================================================================================  " 
     echo "2.2.1 Ensure xinetd is not installed  " 
    rpm -q xinetd  
     echo "  ================================================================================  " 
     echo "2.2.2 Ensure xorg-x11-server-common is not installed  " 
    rpm -q xorg-x11-server-common  
     echo "  ================================================================================  " 
     echo "2.2.3 Ensure Avahi Server is not installed  " 
    rpm -q avahi-autoipd avahi  
     echo "  ================================================================================  " 
     echo "2.2.4 Ensure CUPS is not installed  " 
    rpm -q cups  
     echo "  ================================================================================  " 
     echo "2.2.5 Ensure DAuditoriaP Server is not installed  " 
    rpm -q dAuditoriap-server  
     echo "  ================================================================================  " 
     echo "2.2.6 Ensure DNS Server is not installed  " 
    rpm -q bind  
     echo "  ================================================================================  " 
     echo "2.2.7 Ensure FTP Server is not installed  " 
    rpm -q ftp  
     echo "  ================================================================================  " 
     echo "2.2.8 Ensure VSFTP Server is not installed  " 
    yum remove vsftpd  
     echo "  ================================================================================  " 
     echo "2.2.9 Ensure TFTP Server is not installed  " 
    rpm -q tftp-server  
     echo "  ================================================================================  " 
     echo "2.2.11 Ensure IMAP and POP3 server is not installed  " 
    rpm -q dovecot cyrus-imapd  
     echo "  ================================================================================  " 
     echo "2.2.12 Ensure Samba is not installed  " 
    rpm -q samba  
     echo "  ================================================================================  " 
     echo "2.2.13 Ensure HTTP Proxy Server is not installed  " 
    rpm -q squid  
     echo "  ================================================================================  " 
     echo "2.2.14 Ensure net-snmp is not installed  " 
    rpm -q net-snmp  
     echo "  ================================================================================  " 
     echo "2.2.15 Ensure NIS server is not installed  " 
    rpm -q ypserv  
     echo "  ================================================================================  " 
     echo "2.2.16 Ensure telnet-server is not installed  " 
    rpm -q telnet-server  
     echo "  ================================================================================  " 
     echo "2.2.17 Ensure mail transfer agent is configured for local-only mode  " 
    cat /etc/postfix/main.cf  
     echo "  ================================================================================  " 
     echo "2.2.18 Ensure nfs-utils is not installed or the nfs-server service is masked  " 
    rpm -q nfs-utils  
     echo "  ================================================================================  " 
     echo "2.2.19 Ensure rpcbind is not installed or the rpcbind services are masked  " 
    rpm -q rpcbind  
     echo "  ================================================================================  " 
     echo "2.2.20 Ensure rsync is not installed or the rsyncd service is masked  " 
    rpm -q rsync  
     echo "  ================================================================================  " 
     echo "2.3.1 Ensure NIS Client is not installed  " 
    rpm -q ypbind  
     echo "  ================================================================================  " 
     echo "2.3.2 Ensure rsh client is not installed  " 
    rpm -q rsh  
     echo "  ================================================================================  " 
     echo "2.3.3 Ensure talk client is not installed  " 
    rpm -q talk  
     echo "  ================================================================================  " 
     echo "2.3.4 Ensure telnet client is not installed  " 
    rpm -q telnet  
     echo "  ================================================================================  " 
     echo "2.3.5 Ensure LDAP client is not installed  " 
    rpm -q openldap-clients  
     echo "  ================================================================================  " 
     echo "2.3.6 Ensure TFTP client is not installed  " 
    rpm -q tftp  
     echo "  ================================================================================  " 
     echo "3.1.1 Verify if IPv6 is enabled on the system  " 
    grep "^AddressFamily" "/etc/ssh/sshd_config"  
     echo "  ================================================================================  " 
     echo "3.1.4 Ensure wireless interfaces are disabled  " 
    /tmp/redhat8-cis/remediate/3.1.4_audit.sh  
     echo "  ================================================================================  " 
     echo "3.2.1 Ensure IP forwarding is disabled  " 
    grep -E "net.ipv4.ip_forward\s*=\s*0" /etc/sysctl.d/60-netipv4_sysctl.conf  
    grep -E "net.ipv6.conf.all.forwarding\s*=\s*0" /etc/sysctl.d/60-netipv6_sysctl.conf  
     echo "  ================================================================================  " 
     echo "3.2.2 Ensure packet redirect sending is disabled  " 
    grep -E "net.ipv4.conf.(all|default).send_redirects\s*=\s*0" /etc/sysctl.d/60-netipv4_sysctl.conf  
     echo "  ================================================================================  " 
     echo "3.3.1 Ensure source routed packets are not accepted  " 
    grep -E "net.ipv4.conf.(all|default).accept_source_route\s*=\s*0" /etc/sysctl.d/60-netipv4_sysctl.conf  
     echo "  ================================================================================  " 
     echo "3.3.2 Ensure ICMP redirects are not accepted  " 
    grep -E "net.ipv4.conf.(all|default).accept_redirects\s*=\s*0" /etc/sysctl.d/60-netipv4_sysctl.conf  
     echo "  ================================================================================  " 
     echo "3.3.3 Ensure secure ICMP redirects are not accepted  " 
    grep -E "net.ipv4.conf.(all|default).secure_redirects\s*=\s*0" /etc/sysctl.d/60-netipv4_sysctl.conf  
     echo "  ================================================================================  " 
     echo "3.3.4 Ensure suspicious packets are logged  " 
    grep -E "net.ipv4.conf.(all|default).log_martians\s*=\s*1" /etc/sysctl.d/60-netipv4_sysctl.conf  
     echo "  ================================================================================  " 
     echo "3.3.5 Ensure broadcast ICMP requests are ignored  " 
    /tmp/redhat8-cis/remediate/3.3.5_audit.sh  
     echo "  ================================================================================  " 
     echo "3.3.6 Ensure bogus ICMP responses are ignored  " 
    /tmp/redhat8-cis/remediate/3.3.6_audit.sh  
      echo "  ================================================================================  " 
     echo "3.3.7 Ensure Reverse Path Filtering is enabled  "
    grep "net\.ipv4\.conf\.all\.rp_filter\s*=\s*1\|net\.ipv4\.conf\.default\.rp_filter\s*=\s*1" /etc/sysctl.d/60-netipv4_sysctl.conf
    echo "  ================================================================================  " 
     echo "3.3.9 Ensure IPv6 router advertisements are not accepted  "
    grep "net\.ipv6\.conf\.all\.accept_ra\s*=\s*0\|net\.ipv6\.conf\.default\.accept_ra\s*=\s*0" /etc/sysctl.d/60-netipv6_sysctl.conf

     echo "  ================================================================================  " 
     echo "5.1.2 Ensure permissions on /etc/crontab are configured  " 
    stat /etc/crontab  
     echo "  ================================================================================  " 
     echo "5.1.3 Ensure permissions on /etc/cron.hourly are configured  " 
    stat /etc/cron.hourly  
     echo "  ================================================================================  " 
     echo "5.1.4 Ensure permissions on /etc/cron.daily are configured  " 
    stat /etc/cron.daily  
     echo "  ================================================================================  " 
     echo "5.1.5 Ensure permissions on /etc/cron.weekly are configured  " 
    stat /etc/cron.weekly  
     echo "  ================================================================================  " 
     echo "5.1.6 Ensure permissions on /etc/cron.monthly are configured  " 
    stat /etc/cron.monthly  
     echo "  ================================================================================  " 
     echo "5.1.7 Ensure permissions on /etc/cron.d are configured  " 
    stat /etc/cron.d  
     echo "  ================================================================================  " 
     echo "5.2.5 Ensure SSH LogLevel is appropriate  " 
    grep -E LogLevel /etc/ssh/sshd_config  
     echo "  ================================================================================  " 
     echo "5.2.6 Ensure SSH PAM is enabled  " 
    grep -E UsePAM /etc/ssh/sshd_config  
     echo "  ================================================================================  " 
     echo "5.2.9 Ensure SSH PermitEmptyPasswords is disabled  " 
    grep -E "^\s*PermitEmptyPasswords\s+" /etc/ssh/sshd_config  
     echo "  ================================================================================  " 
     echo "5.2.10 Ensure SSH PermitUserEnvironment is disabled  " 
    sshd -T -C user=root -C host="$(hostname)" -C addr="$(grep $(hostname) /etc/hosts | awk '{print $1}')" | grep permituserenvironment  
     echo "  ================================================================================  " 
     echo "5.2.15 Ensure SSH warning banner is configured  " 
    grep -E "^\s*Banner\s+" /etc/ssh/sshd_config  
     echo "  ================================================================================  " 
     echo "5.2.16 Ensure SSH MaxAuthTries is set to 4 or less  " 
    grep -E "^\s*MaxAuthTries\s+" /etc/ssh/sshd_config  
     echo "  ================================================================================  " 
     echo "5.2.17 Ensure SSH MaxStartups is configured  " 
    grep -E "^\s*MaxStartups\s+" /etc/ssh/sshd_config  
     echo "  ================================================================================  " 
     echo "5.2.18 Ensure SSH MaxSessions is set to 10 or less  " 
    grep -E "^\s*MaxSessions\s+" /etc/ssh/sshd_config  
     echo "  ================================================================================  " 
     echo "5.2.19 Ensure SSH LoginGraceTime is set to one minute or less  " 
    grep -E "^\s*LoginGraceTime\s+" /etc/ssh/sshd_config  
     echo "  ================================================================================  " 
     echo "5.2.20 Ensure SSH Idle Timeout Interval is configured  " 
    grep -E "^\s*ClientAliveInterval\s+" /etc/ssh/sshd_config  
    grep -E "^\s*ClientAliveCountMax\s+" /etc/ssh/sshd_config  
     echo "  ================================================================================  " 
     echo "5.3.2 Ensure sudo commands use pty  " 
    grep -E "^\s*Defaults\s*use_pty" /etc/sudoers  
     echo "  ================================================================================  " 
     echo "5.3.3 Ensure sudo log file exists  " 
    grep -E "^Defaults\s*logfile" /etc/sudoers  
     echo "  ================================================================================  " 
     echo "5.5.1 Ensure password creation requirements are configured  " 
    grep -E "^\s*minlen\s+" /etc/security/pwquality.conf  
    grep -E "^\s*minclass\s+" /etc/security/pwquality.conf  
     echo "  ================================================================================  " 
     echo "5.5.2 Ensure lockout for failed password attempts is configured  " 
    grep -E "^\s*deny\s+" /etc/security/faillock.conf  
    grep -E "^\s*unlock_time\s+" /etc/security/faillock.conf  
     echo "  ================================================================================  " 
     echo "5.3.1 Ensure sudo is installed  " 
    yum list sudo  
     echo "  ================================================================================  " 
     echo "5.5.3 Ensure password reuse is limited  " 
    grep -P '^\h*password\h+(requisite|sufficient)\h+(pam_pwhistory\.so|pam_unix\.so)\h+([^#  \r]+\h+)?remember=([5-9]|[1-9][0-9]+)\h*(\h+.*)?$' /etc/pam.d/system-auth  
     echo "  ================================================================================  " 
     echo "5.5.4  Verify password hashing algorithm is sha512  " 
    /tmp/redhat8-cis/remediate/5.5.4_audit.sh  
     echo "  ================================================================================  " 
     echo "5.6.1.1 Ensure password expiration is 365 days or less  " 
    grep -E "^\s*PASS_MAX_DAYS\s+" /etc/login.defs  
     echo "  ================================================================================  " 
     echo "6.1.3 Ensure permissions on /etc/passwd are configured  " 
    stat /etc/passwd  
     echo "  ================================================================================  " 
     echo "6.1.4 Ensure permissions on /etc/shadow are configured  " 
    stat /etc/shadow  
     echo "  ================================================================================  " 
     echo "6.1.5 Ensure permissions on /etc/group are configured  " 
    stat /etc/group  
     echo "  ================================================================================  " 
     echo "6.1.6 Ensure permissions on /etc/gshadow are configured  " 
    stat /etc/gshadow  
     echo "  ================================================================================  " 
     echo "6.1.7 Ensure permissions on /etc/passwd- are configured  " 
    stat /etc/passwd-  
     echo "  ================================================================================  " 
     echo "6.1.8 Ensure permissions on /etc/shadow- are configured  " 
    stat /etc/shadow-  
     echo "  ================================================================================  " 
     echo "6.1.9 Ensure permissions on /etc/group- are configured  " 
    stat /etc/group-  
     echo "  ================================================================================  " 
     echo "6.1.10 Ensure permissions on /etc/gshadow-  " 
    stat /etc/gshadow-  
     echo "  ================================================================================  " 
   # yum list installed | less >> packinstall_`hostname`_`date +%A%d%B`.txt

} > "$filename"
