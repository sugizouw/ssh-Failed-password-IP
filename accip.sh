#!/bin/sh
sed -n -e '/Failed password/s/.* sshd.*Failed password for.*from \([0-9.]*\) port .*/\1/p' /var/log/secure | sort | uniq | xargs -n1 | whois | grep "Organization"
