#!/bin/bash
search () {
    for i in 1 2 3
    do printf "."; sleep 0.5; done; printf "\n\n";
}
# Check if there is a line in /etc/hosts containing "golinks".
# If it does then remove it
printf "\n\n🔎\tChecking settings for go/ in etc hosts"; search;
if grep -q "go" /etc/hosts; then
    printf "🗑\tA redirect exists for go/links, removing"; search;
    # Remove golinks settings lines
    /usr/bin/sed -i~ /go/d /etc/hosts
    /usr/bin/sed -i~ /golinks/d /etc/hosts
fi
# Reset DNS
printf "🖥\tResetting DNS settings"; search;
/usr/bin/killall -HUP mDNSResponder
printf "🗑\t\e[1;32mgo/links successfully removed\e[0m"; sleep 1;

printf "\n\nRemoved golinks by mistake?\n\n"
printf 'Reinstall go/links at:\n\n🔗\t\e[1;34m\e]8;;https://github.com/GoLinks/golinks\ahttps://github.com/GoLinks/golinks\e]8;;\a\e[0m\n\n\n'
exit 0
