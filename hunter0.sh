#!/bin/sh
#########################################################################
#                                                                       #
#                        ./hunter01                                      #
#   By Neo-Zero ##                                                      #
#########################################################################
cat << !
                                                                                              
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡀⢐⡀⡤⣢⢾⣶⢐⣆⣔⡌⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⣲⣻⣾⣧⣿⣿⣷⣿⣿⣾⣿⣿⡇⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠠⣌⣿⣿⣿⣿⡿⡿⠿⠿⢿⣿⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⢠⣠⣹⣿⣿⠏⡵⡀⠀⠀⠀⠀⠈⠿⣿⠇⡀⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⢀⢵⣿⡟⠁⠀⠃⡵⠀⠂⠀⠀⠀⠀⠀⠀⠁⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠠⣭⣿⡇⠀⡄⠄⠊⠃⢔⣌⠀⠀⢀⠀⠀⡜⠀⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠚⣺⢿⠈⢀⠈⢄⢓⢘⡿⣂⣤⣤⡀⢪⣥⡾⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠡⢛⣂⠽⣭⠷⠾⠿⠸⣿⣿⣿⠇⣳⡵⠋⠀⠀⠀⠀⠀By: uno-zero
⠀⠀⠀⠀⠀⠀⠀⠀⠈⣮⡻⣭⣶⣦⣀⠊⠑⠑⠁⠹⣸⠷⢁⠀⠀⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣿⣽⣻⢟⢝⠿⠻⡯⡤⠼⣀⢼⣿⣦⠀⠀⠀
⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⣿⣻⢾⠼⢂⡄⣐⠰⠄⠸⡿⡿⠙⠀⠀
⠀⠀⠀⠀⠀⠀⠀⢀⣴⣛⣺⣿⣽⣟⣷⠉⢠⣿⣿⢃⣀⣰⣶⣮⣤⡀⠀⠀
⠀⠀⠀⢀⠠⣴⢸⣿⢿⣵⣿⣿⣿⣿⣿⣷⢿⣿⢧⣿⣿⣿⣿⣿⣿⣿⣦⠤
⠀⠀⣴⣿⣿⣿⣿⣷⣾⢿⣿⣿⣿⣿⣿⣿⡟⣿⣾⣿⣿⡟⠻⡾⡇⠃⠛⠀
⠠⠐⣾⣿⣟⢿⣿⣿⣻⣞⣻⣿⣿⣿⡯⠥⠁⢜⠛⠻⠯⢤⣂⠑⠀⠀⠀⠀
⠨⠈⠈⠈⠁⠀⢙⡿⢷⢿⣏⣽⢿⠅⡂⠀⠚⣤⣤⡄⠀⠀⡏⡇⠀⠀⠀⠀
⠈⠀⠀⠀⠀⠀⠈⠑⠓⢸⢿⡿⡇⡁⣿⡸⢰⢎⠉⠛⠀⠀⠁⠁⠀⠀⠀⠀
⠐⠀⠀⠀⠀⠀⠀⠀⠀⢸⡄⣷⡇⡇⠏⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠰⠀⠀⠀⠀⠀⠀⠀⠀⠈⠇⠋⠃⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
⠀⠀                                                 
!

## Search DB sites https://www.iana.org/domains/root/db
    echo 
	echo
	read -p "                     Search:  " BINGGEOCODE
	echo

	COUNT=9
	cat "site.lst" | sed "s/site:/site:$BINGGEOCODE/" | while read dork
    do
		while [ "$COUNT" -le 100 ]; do
            lynx "http://www.bing.com/search?q=$dork&qs=n&pq=$dork&sc=8-5&sp=-1&sk=&first=$COUNT&FORM=PORE" -dump -listonly >> r.txt
            cat "r.txt" | grep -v 'http://www.bing.com' | grep -v 'javascript:void' | grep -v 'javascript:' | grep -v 'Hidden links:' | grep -v 'Visible links' | grep -v 'References' | grep -v 'msn.com' | grep -v 'microsoft.com' | grep -v 'yahoo.com' | grep -v 'live.com' | grep -v 'microsofttranslator.com' | grep -v 'irongeek.com' | grep -v 'hackforums.net' | grep -v 'freelancer.com' | grep -v 'facebook.com' | grep -v 'mozilla.org' | grep -v 'stackoverflow.com' | grep -v 'php.net' | grep -v 'wikipedia.org' | grep -v 'amazon.com' | grep -v '4shared.com' | grep -v 'wordpress.org' | grep -v 'sourceforge.net' | grep -v 'about.com' | grep -v 'phpbuilder.com' | grep -v 'phpnuke.org' | grep -v 'youtube.com' | grep -v 'tizag.com' | grep -v 'devshed.com' | grep -v 'owasp.org' | grep -v 'fictionbook.org' | grep -v 'p4kurd.com' | grep -v 'silenthacker.do.am' | grep -v 'codingforums.com' | grep -v 'zymic.com' | grep -v 'gaza-hacker.com' | grep -v 'tudosobrehacker.com' | grep -v 'immortaltechnique.co.uk' | cut -d' ' -f4 | sed '/^$/d' | sed 's/9.//' | sed '/^$/d' | sort | uniq >> h4.txt
            COUNT=$((COUNT +12))
        done
	done
    echo "The END"
	rm r.txt