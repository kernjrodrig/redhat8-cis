    #!/bin/bash
    #mod8
    #Informe hardening
    touch Auditoria_`hostname`_`date +%F`.txt
    printf "Audit RHEL\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "Fecha:`date` \n">>Auditoria_`hostname`_`date +%F`.txt
    printf "Hostname:`hostname`\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "Versión de OS\n">>Auditoria_`hostname`_`date +%F`.txt
    cat /etc/os-release >>A===============================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "Versión de Kernel\n">>Auditoria_`hostname`_`date +%F`.txt
    uname -a >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "1.1.1.1 Ensure mounting of cramfs filesystems is disabled\n">>Auditoria_`hostname`_`date +%F`.txt
    modprobe -n -v cramfs | grep "^install" >>Audiuditoria_`hostname`_`date +%F`.txt
    printf "\n=================toria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "1.1.9 Disable Automounting\n">>Auditoria_`hostname`_`date +%F`.txt
    modprobe -n -v autofs >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "1.1.10 Disable USB Storage\n">>Auditoria_`hostname`_`date +%F`.txt
    modprobe -n -v usb-storage >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "1.7.1 Ensure message of the day is configured properly\n">>Auditoria_`hostname`_`date +%F`.txt
    stat /etc/motd >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "1.7.2 Ensure local login warning banner is configured properly\n">>Auditoria_`hostname`_`date +%F`.txt
    cat /etc/issue >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "1.7.3 Ensure remote login warning banner is configured properly\n">>Auditoria_`hostname`_`date +%F`.txt
    cat /etc/issue.net >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "1.7.4 Ensure permissions on /etc/motd are configured\n">>Auditoria_`hostname`_`date +%F`.txt
    stat /etc/motd >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "1.7.5 Ensure permissions on /etc/issue are configured\n">>Auditoria_`hostname`_`date +%F`.txt
    stat /etc/issue >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "1.7.6 Ensure permissions on /etc/issue.net are configured\n">>Auditoria_`hostname`_`date +%F`.txt
    stat /etc/issue.net >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "2.1.1 Ensure time synchronization is in use\n">>Auditoria_`hostname`_`date +%F`.txt
    rpm -q chrony >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "2.2.1 Ensure xinetd is not installed\n">>Auditoria_`hostname`_`date +%F`.txt
    rpm -q xinetd >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "2.2.2 Ensure xorg-x11-server-common is not installed\n">>Auditoria_`hostname`_`date +%F`.txt
    rpm -q xorg-x11-server-common >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "2.2.3 Ensure Avahi Server is not installed\n">>Auditoria_`hostname`_`date +%F`.txt
    rpm -q avahi-autoipd avahi >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "2.2.4 Ensure CUPS is not installed\n">>Auditoria_`hostname`_`date +%F`.txt
    rpm -q cups >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "2.2.5 Ensure DAuditoriaP Server is not installed\n">>Auditoria_`hostname`_`date +%F`.txt
    rpm -q dAuditoriap-server >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "2.2.6 Ensure DNS Server is not installed\n">>Auditoria_`hostname`_`date +%F`.txt
    rpm -q bind >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "2.2.7 Ensure FTP Server is not installed\n">>Auditoria_`hostname`_`date +%F`.txt
    rpm -q ftp >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "2.2.8 Ensure VSFTP Server is not installed\n">>Auditoria_`hostname`_`date +%F`.txt
    yum remove vsftpd >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "2.2.9 Ensure TFTP Server is not installed\n">>Auditoria_`hostname`_`date +%F`.txt
    rpm -q tftp-server >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "2.2.11 Ensure IMAP and POP3 server is not installed\n">>Auditoria_`hostname`_`date +%F`.txt
    rpm -q dovecot cyrus-imapd >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "2.2.12 Ensure Samba is not installed\n">>Auditoria_`hostname`_`date +%F`.txt
    rpm -q samba >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "2.2.13 Ensure HTTP Proxy Server is not installed\n">>Auditoria_`hostname`_`date +%F`.txt
    rpm -q squid >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "2.2.14 Ensure net-snmp is not installed\n">>Auditoria_`hostname`_`date +%F`.txt
    rpm -q net-snmp >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "2.2.15 Ensure NIS server is not installed\n">>Auditoria_`hostname`_`date +%F`.txt
    rpm -q ypserv >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "2.2.16 Ensure telnet-server is not installed\n">>Auditoria_`hostname`_`date +%F`.txt
    rpm -q telnet-server >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "2.2.17 Ensure mail transfer agent is configured for local-only mode\n">>Auditoria_`hostname`_`date +%F`.txt
    cat /etc/postfix/main.cf >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "2.2.18 Ensure nfs-utils is not installed or the nfs-server service is masked\n">>Auditoria_`hostname`_`date +%F`.txt
    rpm -q nfs-utils >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "2.2.19 Ensure rpcbind is not installed or the rpcbind services are masked\n">>Auditoria_`hostname`_`date +%F`.txt
    rpm -q rpcbind >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "2.2.20 Ensure rsync is not installed or the rsyncd service is masked\n">>Auditoria_`hostname`_`date +%F`.txt
    rpm -q rsync >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "2.3.1 Ensure NIS Client is not installed\n">>Auditoria_`hostname`_`date +%F`.txt
    rpm -q ypbind >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "2.3.2 Ensure rsh client is not installed\n">>Auditoria_`hostname`_`date +%F`.txt
    rpm -q rsh >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "2.3.3 Ensure talk client is not installed\n">>Auditoria_`hostname`_`date +%F`.txt
    rpm -q talk >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "2.3.4 Ensure telnet client is not installed\n">>Auditoria_`hostname`_`date +%F`.txt
    rpm -q telnet >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "2.3.5 Ensure LDAP client is not installed\n">>Auditoria_`hostname`_`date +%F`.txt
    rpm -q openldap-clients >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "2.3.6 Ensure TFTP client is not installed\n">>Auditoria_`hostname`_`date +%F`.txt
    rpm -q tftp >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "3.1.1 Verify if IPv6 is enabled on the system\n">>Auditoria_`hostname`_`date +%F`.txt
    grep "^AddressFamily" "/etc/ssh/sshd_config" >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "3.1.4 Ensure wireless interfaces are disabled\n">>Auditoria_`hostname`_`date +%F`.txt
    sh 3.1.4_audit.sh >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "3.2.1 Ensure IP forwarding is disabled\n">>Auditoria_`hostname`_`date +%F`.txt
    sh 3.2.1_audit.sh >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "3.2.2 Ensure packet redirect sending is disabled\n">>Auditoria_`hostname`_`date +%F`.txt
    sh 3.2.2_audit.sh >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "3.3.1 Ensure source routed packets are not accepted\n">>Auditoria_`hostname`_`date +%F`.txt
    grep -E "net.ipv4.conf.(all|default).accept_source_route\s*=\s*0" /etc/sysctl.d/60-netipv4_sysctl.conf >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "3.3.2 Ensure ICMP redirects are not accepted\n">>Auditoria_`hostname`_`date +%F`.txt
    grep -E "net.ipv4.conf.(all|default).accept_redirects\s*=\s*0" /etc/sysctl.d/60-netipv4_sysctl.conf >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "3.3.3 Ensure secure ICMP redirects are not accepted\n">>Auditoria_`hostname`_`date +%F`.txt
    grep -E "net.ipv4.conf.(all|default).secure_redirects\s*=\s*0" /etc/sysctl.d/60-netipv4_sysctl.conf >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "3.3.4 Ensure suspicious packets are logged\n">>Auditoria_`hostname`_`date +%F`.txt
    grep -E "net.ipv4.conf.(all|default).log_martians\s*=\s*1" /etc/sysctl.d/60-netipv4_sysctl.conf >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "3.3.5 Ensure broadcast ICMP requests are ignored\n">>Auditoria_`hostname`_`date +%F`.txt
    sh 3.3.5_audit.sh >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "3.3.6 Ensure bogus ICMP responses are ignored\n">>Auditoria_`hostname`_`date +%F`.txt
    sh 3.3.6_audit.sh >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "5.1.2 Ensure permissions on /etc/crontab are configured\n">>Auditoria_`hostname`_`date +%F`.txt
    stat /etc/crontab >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "5.1.3 Ensure permissions on /etc/cron.hourly are configured\n">>Auditoria_`hostname`_`date +%F`.txt
    stat /etc/cron.hourly >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "5.1.4 Ensure permissions on /etc/cron.daily are configured\n">>Auditoria_`hostname`_`date +%F`.txt
    stat /etc/cron.daily >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "5.1.5 Ensure permissions on /etc/cron.weekly are configured\n">>Auditoria_`hostname`_`date +%F`.txt
    stat /etc/cron.weekly >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "5.1.6 Ensure permissions on /etc/cron.monthly are configured\n">>Auditoria_`hostname`_`date +%F`.txt
    stat /etc/cron.monthly >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "5.1.7 Ensure permissions on /etc/cron.d are configured\n">>Auditoria_`hostname`_`date +%F`.txt
    stat /etc/cron.d >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "5.2.5 Ensure SSH LogLevel is appropriate\n">>Auditoria_`hostname`_`date +%F`.txt
    grep -E LogLevel /etc/ssh/sshd_config >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "5.2.6 Ensure SSH PAM is enabled\n">>Auditoria_`hostname`_`date +%F`.txt
    grep -E UsePAM /etc/ssh/sshd_config >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "5.2.9 Ensure SSH PermitEmptyPasswords is disabled\n">>Auditoria_`hostname`_`date +%F`.txt
    grep -E "^\s*PermitEmptyPasswords\s+" /etc/ssh/sshd_config >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "5.2.15 Ensure SSH warning banner is configured\n">>Auditoria_`hostname`_`date +%F`.txt
    grep -E "^\s*Banner\s+" /etc/ssh/sshd_config >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "5.2.16 Ensure SSH MaxAuthTries is set to 4 or less\n">>Auditoria_`hostname`_`date +%F`.txt
    grep -E "^\s*MaxAuthTries\s+" /etc/ssh/sshd_config >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "5.2.17 Ensure SSH MaxStartups is configured\n">>Auditoria_`hostname`_`date +%F`.txt
    grep -E "^\s*MaxStartups\s+" /etc/ssh/sshd_config >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "5.2.18 Ensure SSH MaxSessions is set to 10 or less\n">>Auditoria_`hostname`_`date +%F`.txt
    grep -E "^\s*MaxSessions\s+" /etc/ssh/sshd_config >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "5.2.19 Ensure SSH LoginGraceTime is set to one minute or less\n">>Auditoria_`hostname`_`date +%F`.txt
    grep -E "^\s*LoginGraceTime\s+" /etc/ssh/sshd_config >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "5.2.20 Ensure SSH Idle Timeout Interval is configured\n">>Auditoria_`hostname`_`date +%F`.txt
    grep -E "^\s*ClientAliveInterval\s+" /etc/ssh/sshd_config >>Auditoria_`hostname`_`date +%F`.txt
    grep -E "^\s*ClientAliveCountMax\s+" /etc/ssh/sshd_config >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "5.3.2 Ensure sudo commands use pty\n">>Auditoria_`hostname`_`date +%F`.txt
    grep -E "^\s*Defaults\s*use_pty" /etc/sudoers >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "5.3.3 Ensure sudo log file exists\n">>Auditoria_`hostname`_`date +%F`.txt
    grep -E "^Defaults\s*logfile" /etc/sudoers >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "5.5.1 Ensure password creation requirements are configured\n">>Auditoria_`hostname`_`date +%F`.txt
    grep -E "^\s*minlen\s+" /etc/security/pwquality.conf >>Auditoria_`hostname`_`date +%F`.txt
    grep -E "^\s*minclass\s+" /etc/security/pwquality.conf >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "5.5.2 Ensure lockout for failed password attempts is configured\n">>Auditoria_`hostname`_`date +%F`.txt
    grep -E "^\s*deny\s+" /etc/security/faillock.conf >>Auditoria_`hostname`_`date +%F`.txt
    grep -E "^\s*unlock_time\s+" /etc/security/faillock.conf >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "5.3.1 Ensure sudo is installed\n">>Auditoria_`hostname`_`date +%F`.txt
    yum list sudo >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "5.5.3 Ensure password reuse is limited\n">>Auditoria_`hostname`_`date +%F`.txt
    grep -P '^\h*password\h+(requisite|sufficient)\h+(pam_pwhistory\.so|pam_unix\.so)\h+([^#\n\r]+\h+)?remember=([5-9]|[1-9][0-9]+)\h*(\h+.*)?$' /etc/pam.d/system-auth >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "5.5.4  Verify password hashing algorithm is sha512\n">>Auditoria_`hostname`_`date +%F`.txt
    sh 5.5.4_audit.sh >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "5.6.1.1 Ensure password expiration is 365 days or less\n">>Auditoria_`hostname`_`date +%F`.txt
    grep -E "^\s*PASS_MAX_DAYS\s+" /etc/login.defs >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "6.1.3 Ensure permissions on /etc/passwd are configured\n">>Auditoria_`hostname`_`date +%F`.txt
    stat /etc/passwd >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "6.1.4 Ensure permissions on /etc/shadow are configured\n">>Auditoria_`hostname`_`date +%F`.txt
    stat /etc/shadow >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "6.1.5 Ensure permissions on /etc/group are configured\n">>Auditoria_`hostname`_`date +%F`.txt
    stat /etc/group >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "6.1.6 Ensure permissions on /etc/gshadow are configured\n">>Auditoria_`hostname`_`date +%F`.txt
    stat /etc/gshadow >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "6.1.7 Ensure permissions on /etc/passwd- are configured\n">>Auditoria_`hostname`_`date +%F`.txt
    stat /etc/passwd- >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "6.1.8 Ensure permissions on /etc/shadow- are configured\n">>Auditoria_`hostname`_`date +%F`.txt
    stat /etc/shadow- >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "6.1.9 Ensure permissions on /etc/group- are configured\n">>Auditoria_`hostname`_`date +%F`.txt
    stat /etc/group- >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    printf "6.1.10 Ensure permissions on /etc/gshadow-\n">>Auditoria_`hostname`_`date +%F`.txt
    stat /etc/gshadow- >>Auditoria_`hostname`_`date +%F`.txt
    printf "\n================================================================================\n">>Auditoria_`hostname`_`date +%F`.txt
    yum list installed | less >> packinstall_`hostname`_`date +%A%d%B`.txt