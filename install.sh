#!/bin/bash
search () {
    for i in 1 2 3
    do printf "."; sleep 0.5; done; printf "\n\n";
}
# Check if there is a line in /etc/hosts containing "golinks".
# If it doesn't then add it, else it if exists replace it with new line.
printf "\n\n🔎\tChecking settings for go/ in etc hosts."; search;
if grep -q "go" /etc/hosts; then
    printf "🐞\t\e[2mA redirect exists for go/links, removing"; search;
    # Remove golinks settings lines
    /usr/bin/sed -i~ /go/d /etc/hosts
    /usr/bin/sed -i~ /golinks/d /etc/hosts
    printf "🗑\tgo/links redirect removed.\n\n\e[22m"; sleep 1;
fi
printf "➕\tAdding redirect for go/links"; search;
# Add redirect
printf "\n# GoLinks Redirect - visit https://github.com/GoLinks/golinks for more information\n52.72.13.96     go \n" >> /etc/hosts
printf "✅\t\e[1;32mRedirect successfully added\e[0m\n\n"; sleep 1;
# Reset DNS
printf "🖥\tResetting DNS settings"; search;
/usr/bin/killall -HUP mDNSResponder
printf "🙂\t\e[1;32m\e[1;34m\e]8;;http://go/?trackSource=install&action=create\ago/links\e]8;;\a\e[0m are ready to be used!\e[0m\n\n"; sleep 1;
printf 'Create your first link at:\n\n🔗\t\e[1;34m\e]8;;http://go/?trackSource=install&action=create\ahttp://go/?trackSource=install&action=create\e]8;;\a\e[0m\n\n\n'
exit 0
