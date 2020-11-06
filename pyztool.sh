#!/bin/bash

clear

if [[ $1 = '--update'  ]]; then
	rm $0 && wget https://raw.githubusercontent.com/THE-SH/PYZTool/master/pyztool.sh>/dev/null 2>&1
	echo [+] "$0" successfully updated!
	exit
fi

#message below the menu
prt="\e[38;5;99mInsert the number of the tool to install it."

#menus

a(){
echo -e '\e[93m\e[1m
 /$$$$$$$  /$$     /$$ /$$$$$$$$
| $$__  $$|  $$   /$$/|_____ $$
| $$  \ $$ \  $$ /$$/      /$$/
| $$$$$$$/  \  $$$$/      /$$/
| $$____/    \  $$/      /$$/
| $$          | $$      /$$/
| $$          | $$     /$$$$$$$$
|__/          |__/    |________/
//Coded by Davi SH
\e[1m
\e[96m[\e[38;5;82m1\e[96m]\e[38;5;84m KLTools
\e[96m[\e[38;5;82m2\e[96m]\e[38;5;84m DeveloperKit
\e[96m[\e[38;5;82m3\e[96m]\e[38;5;84m Add or remove kali repositories & upgrade
\e[96m[\e[38;5;82m4\e[96m]\e[38;5;84m Help

'
}

b(){
echo -e '\e[93m\e[1m
 /$$   /$$ /$$    /$$$$$$$$                  /$$
| $$  /$$/| $$   |__  $$__/                 | $$
| $$ /$$/ | $$      | $$  /$$$$$$   /$$$$$$ | $$  /$$$$$$$
| $$$$$/  | $$      | $$ /$$__  $$ /$$__  $$| $$ /$$_____/
| $$  $$  | $$      | $$| $$  \ $$| $$  \ $$| $$|  $$$$$$
| $$\  $$ | $$      | $$| $$  | $$| $$  | $$| $$ \____  $$
| $$ \  $$| $$$$$$$$| $$|  $$$$$$/|  $$$$$$/| $$ /$$$$$$$/
|__/  \__/|________/|__/ \______/  \______/ |__/|_______/

\e[96m[\e[38;5;82m01\e[96m]\e[38;5;84m Information Gathering			\e[96m[\e[38;5;82m08\e[96m]\e[38;5;84m Exploitation Tools
\e[96m[\e[38;5;82m02\e[96m]\e[38;5;84m Vulnerability Analysis			\e[96m[\e[38;5;82m09\e[96m]\e[38;5;84m Forensics Tools
\e[96m[\e[38;5;82m03\e[96m]\e[38;5;84m Wireless Attacks				\e[96m[\e[38;5;82m10\e[96m]\e[38;5;84m Stress Testing
\e[96m[\e[38;5;82m04\e[96m]\e[38;5;84m Web Applications				\e[96m[\e[38;5;82m11\e[96m]\e[38;5;84m Password Attacks
\e[96m[\e[38;5;82m05\e[96m]\e[38;5;84m Sniffing & Spoofing			\e[96m[\e[38;5;82m12\e[96m]\e[38;5;84m Reverse Engineering
\e[96m[\e[38;5;82m06\e[96m]\e[38;5;84m Maintaining Access				\e[96m[\e[38;5;82m13\e[96m]\e[38;5;84m Hardware Hacking
\e[96m[\e[38;5;82m07\e[96m]\e[38;5;84m Reporting Tools 				\e[96m[\e[38;5;82m14\e[96m]\e[38;5;84m Extra

'
}

cc(){
echo -e '\e[96m[\e[38;5;82m1\e[96m]\e[38;5;84m apache2
\e[96m[\e[38;5;82m2\e[96m]\e[38;5;84m MySQL Server
\e[96m[\e[38;5;82m3\e[96m]\e[38;5;84m MySQL Client
\e[96m[\e[38;5;82m4\e[96m]\e[38;5;84m PHP
\e[96m[\e[38;5;82m5\e[96m]\e[38;5;84m Code editors

'
}

c(){	
echo -e '\e[93m\e[1m
 /$$$$$$$                    /$$$$$$$$                  /$$
| $$__  $$                  |__  $$__/                 | $$
| $$  \ $$  /$$$$$$  /$$    /$$| $$  /$$$$$$   /$$$$$$ | $$  /$$$$$$$
| $$  | $$ /$$__  $$|  $$  /$$/| $$ /$$__  $$ /$$__  $$| $$ /$$_____/
| $$  | $$| $$$$$$$$ \  $$/$$/ | $$| $$  \ $$| $$  \ $$| $$|  $$$$$$
| $$  | $$| $$_____/  \  $$$/  | $$| $$  | $$| $$  | $$| $$ \____  $$
| $$$$$$$/|  $$$$$$$   \  $/   | $$|  $$$$$$/|  $$$$$$/| $$ /$$$$$$$/
|_______/  \_______/    \_/    |__/ \______/  \______/ |__/|_______/
'
}

d(){
echo -e "\e[93m\e[1m
\e[38;5;82m[+] Code editors

\e[96m[\e[38;5;82m1\e[96m]\e[38;5;84m Sublime Text
\e[96m[\e[38;5;82m2\e[96m]\e[38;5;84m vim
\e[96m[\e[38;5;82m3\e[96m]\e[38;5;84m joe
\e[96m[\e[38;5;82m4\e[96m]\e[38;5;84m emacs
\e[96m[\e[38;5;82m5\e[96m]\e[38;5;84m Gedit
\e[96m[\e[38;5;82m6\e[96m]\e[38;5;84m kwrite
\e[96m[\e[38;5;82m7\e[96m]\e[38;5;84m geany


$prt
"
}

#some commands

e(){
	apt-get install ${tool[$y]}
}

f(){
	read -p $'\e[91mkat >\e[0m ' y
}

#menus

g(){
echo -e "\e[93m\e[1m
\e[38;5;82m[+] Information_Gathering

\e[96m[\e[38;5;82m01\e[96m]\e[38;5;84m acccheck					\e[96m[\e[38;5;82m30\e[96m]\e[38;5;84m lbd
\e[96m[\e[38;5;82m02\e[96m]\e[38;5;84m ace-voip					\e[96m[\e[38;5;82m31\e[96m]\e[38;5;84m Maltego Teeth
\e[96m[\e[38;5;82m03\e[96m]\e[38;5;84m Amap					\e[96m[\e[38;5;82m32\e[96m]\e[38;5;84m masscan
\e[96m[\e[38;5;82m04\e[96m]\e[38;5;84m Automater					\e[96m[\e[38;5;82m33\e[96m]\e[38;5;84m Metagoofil
\e[96m[\e[38;5;82m05\e[96m]\e[38;5;84m bing-ip2hosts				\e[96m[\e[38;5;82m34\e[96m]\e[38;5;84m Miranda
\e[96m[\e[38;5;82m06\e[96m]\e[38;5;84m braa					\e[96m[\e[38;5;82m35\e[96m]\e[38;5;84m Nmap
\e[96m[\e[38;5;82m07\e[96m]\e[38;5;84m CaseFile					\e[96m[\e[38;5;82m36\e[96m]\e[38;5;84m ntop
\e[96m[\e[38;5;82m08\e[96m]\e[38;5;84m CDPSnarf					\e[96m[\e[38;5;82m37\e[96m]\e[38;5;84m p0f
\e[96m[\e[38;5;82m09\e[96m]\e[38;5;84m cisco-torch				\e[96m[\e[38;5;82m38\e[96m]\e[38;5;84m Parsero
\e[96m[\e[38;5;82m10\e[96m]\e[38;5;84m Cookie Cadger				\e[96m[\e[38;5;82m39\e[96m]\e[38;5;84m Recon-ng
\e[96m[\e[38;5;82m11\e[96m]\e[38;5;84m copy-router-config				\e[96m[\e[38;5;82m40\e[96m]\e[38;5;84m SET
\e[96m[\e[38;5;82m12\e[96m]\e[38;5;84m DMitry					\e[96m[\e[38;5;82m41\e[96m]\e[38;5;84m smtp-user-enum
\e[96m[\e[38;5;82m13\e[96m]\e[38;5;84m dnmap					\e[96m[\e[38;5;82m42\e[96m]\e[38;5;84m snmpcheck
\e[96m[\e[38;5;82m14\e[96m]\e[38;5;84m dnsenum					\e[96m[\e[38;5;82m43\e[96m]\e[38;5;84m sslcaudit
\e[96m[\e[38;5;82m15\e[96m]\e[38;5;84m dnsmap					\e[96m[\e[38;5;82m44\e[96m]\e[38;5;84m SSLsplit
\e[96m[\e[38;5;82m16\e[96m]\e[38;5;84m DNSRecon					\e[96m[\e[38;5;82m45\e[96m]\e[38;5;84m sslstrip
\e[96m[\e[38;5;82m17\e[96m]\e[38;5;84m dnstracer					\e[96m[\e[38;5;82m46\e[96m]\e[38;5;84m SSLyze
\e[96m[\e[38;5;82m18\e[96m]\e[38;5;84m dnswalk					\e[96m[\e[38;5;82m47\e[96m]\e[38;5;84m THC-IPV6
\e[96m[\e[38;5;82m19\e[96m]\e[38;5;84m DotDotPwn					\e[96m[\e[38;5;82m48\e[96m]\e[38;5;84m theHarvester
\e[96m[\e[38;5;82m20\e[96m]\e[38;5;84m enum4linux					\e[96m[\e[38;5;82m49\e[96m]\e[38;5;84m TLSSLed
\e[96m[\e[38;5;82m21\e[96m]\e[38;5;84m enumIAX					\e[96m[\e[38;5;82m50\e[96m]\e[38;5;84m twofi
\e[96m[\e[38;5;82m22\e[96m]\e[38;5;84m exploitdb					\e[96m[\e[38;5;82m51\e[96m]\e[38;5;84m URLCrazy
\e[96m[\e[38;5;82m23\e[96m]\e[38;5;84m Fierce					\e[96m[\e[38;5;82m52\e[96m]\e[38;5;84m Wireshark
\e[96m[\e[38;5;82m24\e[96m]\e[38;5;84m Firewalk					\e[96m[\e[38;5;82m53\e[96m]\e[38;5;84m WOL-E
\e[96m[\e[38;5;82m25\e[96m]\e[38;5;84m fragroute					\e[96m[\e[38;5;82m54\e[96m]\e[38;5;84m Xplico
\e[96m[\e[38;5;82m26\e[96m]\e[38;5;84m fragrouter					\e[96m[\e[38;5;82m55\e[96m]\e[38;5;84m iSMTP
\e[96m[\e[38;5;82m27\e[96m]\e[38;5;84m Ghost Phisher				\e[96m[\e[38;5;82m56\e[96m]\e[38;5;84m InTrace
\e[96m[\e[38;5;82m28\e[96m]\e[38;5;84m GoLismero					\e[96m[\e[38;5;82m57\e[96m]\e[38;5;84m hping3
\e[96m[\e[38;5;82m29\e[96m]\e[38;5;84m goofile


$prt
"
}

h(){
echo -e "\e[93m\e[1m
\e[38;5;82m[+] Vulnerability Analysis

\e[96m[\e[38;5;82m01\e[96m]\e[38;5;84m BBQSQL					\e[96m[\e[38;5;82m19\e[96m]\e[38;5;84m ohrwurm
\e[96m[\e[38;5;82m02\e[96m]\e[38;5;84m BED					\e[96m[\e[38;5;82m20\e[96m]\e[38;5;84m openvas-administrator
\e[96m[\e[38;5;82m03\e[96m]\e[38;5;84m cisco-auditing-tool			\e[96m[\e[38;5;82m21\e[96m]\e[38;5;84m openvas-cli
\e[96m[\e[38;5;82m04\e[96m]\e[38;5;84m cisco-global-exploiter			\e[96m[\e[38;5;82m22\e[96m]\e[38;5;84m openvas-manager
\e[96m[\e[38;5;82m05\e[96m]\e[38;5;84m cisco-ocs					\e[96m[\e[38;5;82m23\e[96m]\e[38;5;84m openvas-scanner
\e[96m[\e[38;5;82m06\e[96m]\e[38;5;84m cisco-torch				\e[96m[\e[38;5;82m24\e[96m]\e[38;5;84m Oscanner
\e[96m[\e[38;5;82m07\e[96m]\e[38;5;84m copy-router-config				\e[96m[\e[38;5;82m25\e[96m]\e[38;5;84m Powerfuzzer
\e[96m[\e[38;5;82m08\e[96m]\e[38;5;84m commix					\e[96m[\e[38;5;82m26\e[96m]\e[38;5;84m sfuzz
\e[96m[\e[38;5;82m09\e[96m]\e[38;5;84m DBPwAudit					\e[96m[\e[38;5;82m27\e[96m]\e[38;5;84m SidGuesser
\e[96m[\e[38;5;82m10\e[96m]\e[38;5;84m DoonaDot					\e[96m[\e[38;5;82m28\e[96m]\e[38;5;84m SIPArmyKnife
\e[96m[\e[38;5;82m11\e[96m]\e[38;5;84m DotPwn					\e[96m[\e[38;5;82m29\e[96m]\e[38;5;84m sqlmap
\e[96m[\e[38;5;82m12\e[96m]\e[38;5;84m Greenbone Security Assistant 		\e[96m[\e[38;5;82m30\e[96m]\e[38;5;84m Sqlninja
\e[96m[\e[38;5;82m13\e[96m]\e[38;5;84m GSD					\e[96m[\e[38;5;82m31\e[96m]\e[38;5;84m sqlsus
\e[96m[\e[38;5;82m14\e[96m]\e[38;5;84m HexorBase					\e[96m[\e[38;5;82m32\e[96m]\e[38;5;84m THC-IPV6
\e[96m[\e[38;5;82m15\e[96m]\e[38;5;84m Inguma					\e[96m[\e[38;5;82m33\e[96m]\e[38;5;84m tnscmd10g
\e[96m[\e[38;5;82m16\e[96m]\e[38;5;84m jSQL					\e[96m[\e[38;5;82m34\e[96m]\e[38;5;84m unix-privesc-check
\e[96m[\e[38;5;82m17\e[96m]\e[38;5;84m Lynis					\e[96m[\e[38;5;82m35\e[96m]\e[38;5;84m Yersinia
\e[96m[\e[38;5;82m18\e[96m]\e[38;5;84m Nmap


$prt
"
}

i(){
echo -e "\e[93m\e[1m
\e[38;5;82m[+] Wireless Attacks

\e[96m[\e[38;5;82m01\e[96m]\e[38;5;84m Aircrack-ng				\e[96m[\e[38;5;82m17\e[96m]\e[38;5;84m KillerBee
\e[96m[\e[38;5;82m02\e[96m]\e[38;5;84m Asleap					\e[96m[\e[38;5;82m18\e[96m]\e[38;5;84m Kismet
\e[96m[\e[38;5;82m03\e[96m]\e[38;5;84m Bluelog					\e[96m[\e[38;5;82m19\e[96m]\e[38;5;84m mdk3
\e[96m[\e[38;5;82m04\e[96m]\e[38;5;84m BlueMaho					\e[96m[\e[38;5;82m20\e[96m]\e[38;5;84m mfcuk
\e[96m[\e[38;5;82m05\e[96m]\e[38;5;84m Bluepot					\e[96m[\e[38;5;82m21\e[96m]\e[38;5;84m mfoc
\e[96m[\e[38;5;82m06\e[96m]\e[38;5;84m BlueRanger					\e[96m[\e[38;5;82m22\e[96m]\e[38;5;84m mfterm
\e[96m[\e[38;5;82m07\e[96m]\e[38;5;84m Bluesnarfer				\e[96m[\e[38;5;82m23\e[96m]\e[38;5;84m Multimon-NG
\e[96m[\e[38;5;82m08\e[96m]\e[38;5;84m Bully					\e[96m[\e[38;5;82m24\e[96m)\e[38;5;84m PixieWPS
\e[96m[\e[38;5;82m09\e[96m]\e[38;5;84m coWPAtty					\e[96m[\e[38;5;82m25\e[96m)\e[38;5;84m Reaver
\e[96m[\e[38;5;82m10\e[96m]\e[38;5;84m crackle					\e[96m[\e[38;5;82m26\e[96m)\e[38;5;84m redfang
\e[96m[\e[38;5;82m11\e[96m]\e[38;5;84m eapmd5pass					\e[96m[\e[38;5;82m27\e[96m)\e[38;5;84m RTLSDR Scanner
\e[96m[\e[38;5;82m12\e[96m]\e[38;5;84m Fern Wifi Cracker				\e[96m[\e[38;5;82m28\e[96m)\e[38;5;84m Spooftooph
\e[96m[\e[38;5;82m13\e[96m]\e[38;5;84m Ghost Phisher				\e[96m[\e[38;5;82m29\e[96m)\e[38;5;84m Wifi Honey
\e[96m[\e[38;5;82m14\e[96m]\e[38;5;84m GISKismet					\e[96m[\e[38;5;82m30\e[96m)\e[38;5;84m Wifitap
\e[96m[\e[38;5;82m15\e[96m]\e[38;5;84m gr-scan					\e[96m[\e[38;5;82m31\e[96m)\e[38;5;84m Wifite
\e[96m[\e[38;5;82m16\e[96m]\e[38;5;84m kalibrate-rtl


$prt
"
}

j(){
echo -e "\e[93m\e[1m
\e[38;5;82m[+] Web Applications

\e[96m[\e[38;5;82m01\e[96m]\e[38;5;84m apache-users				\e[96m[\e[38;5;82m22\e[96m]\e[38;5;84m Parsero
\e[96m[\e[38;5;82m02\e[96m]\e[38;5;84m Arachni					\e[96m[\e[38;5;82m23\e[96m]\e[38;5;84m plecost
\e[96m[\e[38;5;82m03\e[96m]\e[38;5;84m BBQSQL					\e[96m[\e[38;5;82m24\e[96m]\e[38;5;84m Powerfuzzer
\e[96m[\e[38;5;82m04\e[96m]\e[38;5;84m BlindElephant				\e[96m[\e[38;5;82m25\e[96m]\e[38;5;84m ProxyStrike
\e[96m[\e[38;5;82m05\e[96m]\e[38;5;84m Burp Suite					\e[96m[\e[38;5;82m26\e[96m]\e[38;5;84m Recon-ng
\e[96m[\e[38;5;82m06\e[96m]\e[38;5;84m commix					\e[96m[\e[38;5;82m27\e[96m]\e[38;5;84m Skipfish
\e[96m[\e[38;5;82m07\e[96m]\e[38;5;84m CutyCapt					\e[96m[\e[38;5;82m28\e[96m]\e[38;5;84m sqlmap
\e[96m[\e[38;5;82m08\e[96m]\e[38;5;84m DAVTest					\e[96m[\e[38;5;82m29\e[96m]\e[38;5;84m Sqlninja
\e[96m[\e[38;5;82m09\e[96m]\e[38;5;84m deblaze					\e[96m[\e[38;5;82m30\e[96m]\e[38;5;84m sqlsus
\e[96m[\e[38;5;82m10\e[96m]\e[38;5;84m DIRB					\e[96m[\e[38;5;82m31\e[96m]\e[38;5;84m ua-tester
\e[96m[\e[38;5;82m11\e[96m]\e[38;5;84m DirBuster					\e[96m[\e[38;5;82m32\e[96m]\e[38;5;84m Uniscan
\e[96m[\e[38;5;82m12\e[96m]\e[38;5;84m fimap					\e[96m[\e[38;5;82m33\e[96m]\e[38;5;84m Vega
\e[96m[\e[38;5;82m13\e[96m]\e[38;5;84m FunkLoad					\e[96m[\e[38;5;82m34\e[96m]\e[38;5;84m w3af
\e[96m[\e[38;5;82m14\e[96m]\e[38;5;84m Grabber					\e[96m[\e[38;5;82m35\e[96m]\e[38;5;84m WebScarab
\e[96m[\e[38;5;82m15\e[96m]\e[38;5;84m jboss-autopwn				\e[96m[\e[38;5;82m36\e[96m]\e[38;5;84m Webshag
\e[96m[\e[38;5;82m16\e[96m]\e[38;5;84m joomscan					\e[96m[\e[38;5;82m37\e[96m]\e[38;5;84m WebSlayer
\e[96m[\e[38;5;82m17\e[96m]\e[38;5;84m jSQL					\e[96m[\e[38;5;82m38\e[96m]\e[38;5;84m WebSploit
\e[96m[\e[38;5;82m18\e[96m]\e[38;5;84m Maltego Teeth				\e[96m[\e[38;5;82m39\e[96m]\e[38;5;84m Wfuzz
\e[96m[\e[38;5;82m19\e[96m]\e[38;5;84m Metasploit					\e[96m[\e[38;5;82m40\e[96m]\e[38;5;84m WPScan
\e[96m[\e[38;5;82m20\e[96m]\e[38;5;84m PadBust					\e[96m[\e[38;5;82m41\e[96m]\e[38;5;84m XSSer
\e[96m[\e[38;5;82m21\e[96m]\e[38;5;84m Paros					\e[96m[\e[38;5;82m42\e[96m]\e[38;5;84m zaproxy


$prt
"
}

k(){
echo -e "\e[93m\e[1m
\e[38;5;82m[+] Sniffing & Spoofing

\e[96m[\e[38;5;82m01\e[96m]\e[38;5;84m Burp Suite					\e[96m[\e[38;5;82m17\e[96m]\e[38;5;84m rtpmixsound
\e[96m[\e[38;5;82m02\e[96m]\e[38;5;84m DNSChef					\e[96m[\e[38;5;82m18\e[96m]\e[38;5;84m sctpscan
\e[96m[\e[38;5;82m03\e[96m]\e[38;5;84m fiked					\e[96m[\e[38;5;82m19\e[96m]\e[38;5;84m SIPArmyKnife
\e[96m[\e[38;5;82m04\e[96m]\e[38;5;84m hamster-sidejack				\e[96m[\e[38;5;82m20\e[96m]\e[38;5;84m SIPp
\e[96m[\e[38;5;82m05\e[96m]\e[38;5;84m HexInject					\e[96m[\e[38;5;82m21\e[96m]\e[38;5;84m SIPVicious
\e[96m[\e[38;5;82m06\e[96m]\e[38;5;84m iaxflood					\e[96m[\e[38;5;82m22\e[96m]\e[38;5;84m SniffJoke
\e[96m[\e[38;5;82m07\e[96m]\e[38;5;84m inviteflood				\e[96m[\e[38;5;82m23\e[96m]\e[38;5;84m SSLsplit
\e[96m[\e[38;5;82m08\e[96m]\e[38;5;84m iSMTP					\e[96m[\e[38;5;82m24\e[96m]\e[38;5;84m sslstrip
\e[96m[\e[38;5;82m09\e[96m]\e[38;5;84m isr-evilgrade				\e[96m[\e[38;5;82m25\e[96m]\e[38;5;84m THC-IPV6
\e[96m[\e[38;5;82m10\e[96m]\e[38;5;84m mitmproxy					\e[96m[\e[38;5;82m26\e[96m]\e[38;5;84m VoIPHopper
\e[96m[\e[38;5;82m11\e[96m]\e[38;5;84m ohrwurm					\e[96m[\e[38;5;82m27\e[96m]\e[38;5;84m WebScarab
\e[96m[\e[38;5;82m12\e[96m]\e[38;5;84m protos-sip					\e[96m[\e[38;5;82m28\e[96m]\e[38;5;84m Wifi Honey
\e[96m[\e[38;5;82m13\e[96m]\e[38;5;84m rebind					\e[96m[\e[38;5;82m29\e[96m]\e[38;5;84m Wireshark
\e[96m[\e[38;5;82m14\e[96m]\e[38;5;84m responder					\e[96m[\e[38;5;82m30\e[96m]\e[38;5;84m xspy
\e[96m[\e[38;5;82m15\e[96m]\e[38;5;84m rtpbreak					\e[96m[\e[38;5;82m31\e[96m]\e[38;5;84m Yersinia
\e[96m[\e[38;5;82m16\e[96m]\e[38;5;84m rtpinsertsound				\e[96m[\e[38;5;82m32\e[96m]\e[38;5;84m zaproxy


$prt
"
}

l(){
echo -e "\e[93m\e[1m
\e[38;5;82m[+] Maintaining Access

\e[96m[\e[38;5;82m01\e[96m]\e[38;5;84m CryptCat
\e[96m[\e[38;5;82m02\e[96m]\e[38;5;84m Cymothoa
\e[96m[\e[38;5;82m03\e[96m]\e[38;5;84m dbd
\e[96m[\e[38;5;82m04\e[96m]\e[38;5;84m dns2tcp
\e[96m[\e[38;5;82m05\e[96m]\e[38;5;84m http-tunnel
\e[96m[\e[38;5;82m06\e[96m]\e[38;5;84m HTTPTunnel
\e[96m[\e[38;5;82m07\e[96m]\e[38;5;84m Intersect
\e[96m[\e[38;5;82m08\e[96m]\e[38;5;84m Nishang
\e[96m[\e[38;5;82m09\e[96m]\e[38;5;84m polenum
\e[96m[\e[38;5;82m10\e[96m]\e[38;5;84m PowerSploit
\e[96m[\e[38;5;82m11\e[96m]\e[38;5;84m pwnat
\e[96m[\e[38;5;82m12\e[96m]\e[38;5;84m RidEnum
\e[96m[\e[38;5;82m13\e[96m]\e[38;5;84m sbd
\e[96m[\e[38;5;82m14\e[96m]\e[38;5;84m U3-Pwn
\e[96m[\e[38;5;82m15\e[96m]\e[38;5;84m Webshells
\e[96m[\e[38;5;82m16\e[96m]\e[38;5;84m Weevely


$prt
"
}

m(){
echo -e "\e[93m\e[1m
\e[38;5;82m[+] Reporting Tools

\e[96m[\e[38;5;82m01\e[96m]\e[38;5;84m CaseFile
\e[96m[\e[38;5;82m02\e[96m]\e[38;5;84m CutyCapt
\e[96m[\e[38;5;82m03\e[96m]\e[38;5;84m dos2unix
\e[96m[\e[38;5;82m04\e[96m]\e[38;5;84m Dradis
\e[96m[\e[38;5;82m05\e[96m]\e[38;5;84m KeepNote
\e[96m[\e[38;5;82m06\e[96m]\e[38;5;84m MagicTree
\e[96m[\e[38;5;82m07\e[96m]\e[38;5;84m Metagoofil
\e[96m[\e[38;5;82m08\e[96m]\e[38;5;84m nipper-ng
\e[96m[\e[38;5;82m09\e[96m]\e[38;5;84m Pipal
\e[96m[\e[38;5;82m10\e[96m]\e[38;5;84m android-sdk


$prt
"
}

n(){
echo -e "\e[93m\e[1m
\e[38;5;82m[+] Exploitation Tools

\e[96m[\e[38;5;82m01\e[96m]\e[38;5;84m Armitage
\e[96m[\e[38;5;82m02\e[96m]\e[38;5;84m Backdoor Factory
\e[96m[\e[38;5;82m03\e[96m]\e[38;5;84m BeEF
\e[96m[\e[38;5;82m04\e[96m]\e[38;5;84m cisco-auditing-tool
\e[96m[\e[38;5;82m05\e[96m]\e[38;5;84m cisco-global-exploiter
\e[96m[\e[38;5;82m06\e[96m]\e[38;5;84m cisco-ocs
\e[96m[\e[38;5;82m07\e[96m]\e[38;5;84m cisco-torch
\e[96m[\e[38;5;82m08\e[96m]\e[38;5;84m commix
\e[96m[\e[38;5;82m09\e[96m]\e[38;5;84m crackle
\e[96m[\e[38;5;82m10\e[96m]\e[38;5;84m jboss-autopwn
\e[96m[\e[38;5;82m11\e[96m]\e[38;5;84m Linux Exploit Suggester
\e[96m[\e[38;5;82m12\e[96m]\e[38;5;84m Maltego Teeth
\e[96m[\e[38;5;82m13\e[96m]\e[38;5;84m SET
\e[96m[\e[38;5;82m14\e[96m]\e[38;5;84m ShellNoob
\e[96m[\e[38;5;82m15\e[96m]\e[38;5;84m sqlmap
\e[96m[\e[38;5;82m16\e[96m]\e[38;5;84m THC-IPV6
\e[96m[\e[38;5;82m17\e[96m]\e[38;5;84m Yersinia


$prt
"
}

o(){
echo -e "\e[93m\e[1m
\e[38;5;82m[+] Forensics Tools

\e[96m[\e[38;5;82m01\e[96m]\e[38;5;84m Binwalk					\e[96m[\e[38;5;82m13\e[96m]\e[38;5;84m Galleta
\e[96m[\e[38;5;82m02\e[96m]\e[38;5;84m bulk-extractor				\e[96m[\e[38;5;82m14\e[96m]\e[38;5;84m Guymager
\e[96m[\e[38;5;82m03\e[96m]\e[38;5;84m Capstone					\e[96m[\e[38;5;82m15\e[96m]\e[38;5;84m iPhone Backup Analyzer
\e[96m[\e[38;5;82m04\e[96m]\e[38;5;84m chntpw					\e[96m[\e[38;5;82m16\e[96m]\e[38;5;84m p0f
\e[96m[\e[38;5;82m05\e[96m]\e[38;5;84m Cuckoo					\e[96m[\e[38;5;82m17\e[96m]\e[38;5;84m pdf-parser
\e[96m[\e[38;5;82m06\e[96m]\e[38;5;84m dc3dd					\e[96m[\e[38;5;82m18\e[96m]\e[38;5;84m pdfid
\e[96m[\e[38;5;82m07\e[96m]\e[38;5;84m ddrescue					\e[96m[\e[38;5;82m19\e[96m]\e[38;5;84m pdgmail
\e[96m[\e[38;5;82m08\e[96m]\e[38;5;84m DFF					\e[96m[\e[38;5;82m20\e[96m]\e[38;5;84m peepdf
\e[96m[\e[38;5;82m09\e[96m]\e[38;5;84m diStorm3					\e[96m[\e[38;5;82m21\e[96m]\e[38;5;84m RegRipper
\e[96m[\e[38;5;82m10\e[96m]\e[38;5;84m Dumpzilla					\e[96m[\e[38;5;82m22\e[96m]\e[38;5;84m Volatility
\e[96m[\e[38;5;82m11\e[96m]\e[38;5;84m extundelete				\e[96m[\e[38;5;82m23\e[96m]\e[38;5;84m Xplico
\e[96m[\e[38;5;82m12\e[96m]\e[38;5;84m Foremost


$prt
"
}

p(){
echo -e "\e[93m\e[1m
\e[38;5;82m[+] Stress Testing

\e[96m[\e[38;5;82m01\e[96m]\e[38;5;84m DHCPig
\e[96m[\e[38;5;82m02\e[96m]\e[38;5;84m FunkLoad
\e[96m[\e[38;5;82m03\e[96m]\e[38;5;84m iaxflood
\e[96m[\e[38;5;82m04\e[96m]\e[38;5;84m Inundator
\e[96m[\e[38;5;82m05\e[96m]\e[38;5;84m inviteflood
\e[96m[\e[38;5;82m06\e[96m]\e[38;5;84m ipv6-toolkit
\e[96m[\e[38;5;82m07\e[96m]\e[38;5;84m mdk3
\e[96m[\e[38;5;82m08\e[96m]\e[38;5;84m Reaver
\e[96m[\e[38;5;82m09\e[96m]\e[38;5;84m rtpflood
\e[96m[\e[38;5;82m10\e[96m]\e[38;5;84m SlowHTTPTest
\e[96m[\e[38;5;82m11\e[96m]\e[38;5;84m t50
\e[96m[\e[38;5;82m12\e[96m]\e[38;5;84m Termineter
\e[96m[\e[38;5;82m13\e[96m]\e[38;5;84m THC-IPV6
\e[96m[\e[38;5;82m14\e[96m]\e[38;5;84m THC-SSL-DOS


$prt
"
}

q(){
echo -e "\e[93m\e[1m
\e[38;5;82m[+] Password Attacks

\e[96m[\e[38;5;82m01\e[96m]\e[38;5;84m acccheck					\e[96m[\e[38;5;82m19\e[96m]\e[38;5;84m Maskprocessor
\e[96m[\e[38;5;82m02\e[96m]\e[38;5;84m Burp Suite					\e[96m[\e[38;5;82m20\e[96m]\e[38;5;84m multiforcer
\e[96m[\e[38;5;82m03\e[96m]\e[38;5;84m CeWL					\e[96m[\e[38;5;82m21\e[96m]\e[38;5;84m Ncrack
\e[96m[\e[38;5;82m04\e[96m]\e[38;5;84m chntpw					\e[96m[\e[38;5;82m22\e[96m]\e[38;5;84m oclgausscrack
\e[96m[\e[38;5;82m05\e[96m]\e[38;5;84m cisco-auditing-tool			\e[96m[\e[38;5;82m23\e[96m]\e[38;5;84m PACK
\e[96m[\e[38;5;82m06\e[96m]\e[38;5;84m CmosPwd					\e[96m[\e[38;5;82m24\e[96m]\e[38;5;84m patator
\e[96m[\e[38;5;82m07\e[96m]\e[38;5;84m creddump					\e[96m[\e[38;5;82m25\e[96m]\e[38;5;84m phrasendrescher
\e[96m[\e[38;5;82m08\e[96m]\e[38;5;84m crunch					\e[96m[\e[38;5;82m26\e[96m]\e[38;5;84m polenum
\e[96m[\e[38;5;82m09\e[96m]\e[38;5;84m DBPwAudit					\e[96m[\e[38;5;82m27\e[96m]\e[38;5;84m RainbowCrack
\e[96m[\e[38;5;82m10\e[96m]\e[38;5;84m findmyhash					\e[96m[\e[38;5;82m28\e[96m]\e[38;5;84m rcracki-mt
\e[96m[\e[38;5;82m11\e[96m]\e[38;5;84m gpp-decrypt				\e[96m[\e[38;5;82m29\e[96m]\e[38;5;84m RSMangler
\e[96m[\e[38;5;82m12\e[96m]\e[38;5;84m hash-identifier				\e[96m[\e[38;5;82m30\e[96m]\e[38;5;84m SQLdict
\e[96m[\e[38;5;82m13\e[96m]\e[38;5;84m HexorBase					\e[96m[\e[38;5;82m31\e[96m]\e[38;5;84m Statsprocessor
\e[96m[\e[38;5;82m14\e[96m]\e[38;5;84m THC-Hydra					\e[96m[\e[38;5;82m32\e[96m]\e[38;5;84m THC-pptp-bruter
\e[96m[\e[38;5;82m15\e[96m]\e[38;5;84m John the Ripper				\e[96m[\e[38;5;82m33\e[96m]\e[38;5;84m TrueCrack
\e[96m[\e[38;5;82m16\e[96m]\e[38;5;84m Johnny					\e[96m[\e[38;5;82m34\e[96m]\e[38;5;84m WebScarab
\e[96m[\e[38;5;82m17\e[96m]\e[38;5;84m keimpx					\e[96m[\e[38;5;82m35\e[96m]\e[38;5;84m wordlists
\e[96m[\e[38;5;82m18\e[96m]\e[38;5;84m Maltego Teeth				\e[96m[\e[38;5;82m36\e[96m]\e[38;5;84m zaproxy


$prt
"
}

r(){
echo -e "\e[93m\e[1m
\e[38;5;82m[+] Reverse Engineering

\e[96m[\e[38;5;82m01\e[96m]\e[38;5;84m apktool
\e[96m[\e[38;5;82m02\e[96m]\e[38;5;84m dex2jar
\e[96m[\e[38;5;82m03\e[96m]\e[38;5;84m diStorm3
\e[96m[\e[38;5;82m04\e[96m]\e[38;5;84m edb-debugger
\e[96m[\e[38;5;82m05\e[96m]\e[38;5;84m jad
\e[96m[\e[38;5;82m06\e[96m]\e[38;5;84m javasnoop
\e[96m[\e[38;5;82m07\e[96m]\e[38;5;84m JD-GUI
\e[96m[\e[38;5;82m08\e[96m]\e[38;5;84m OllyDbg
\e[96m[\e[38;5;82m09\e[96m]\e[38;5;84m smali
\e[96m[\e[38;5;82m10\e[96m]\e[38;5;84m Valgrind
\e[96m[\e[38;5;82m11\e[96m]\e[38;5;84m YARA


$prt
"
}

s(){
echo -e "\e[93m\e[1m
\e[38;5;82m[+] Hardware Hacking

\e[96m[\e[38;5;82m1\e[96m]\e[38;5;84m android-sdk
\e[96m[\e[38;5;82m2\e[96m]\e[38;5;84m apktool
\e[96m[\e[38;5;82m3\e[96m]\e[38;5;84m Arduino
\e[96m[\e[38;5;82m4\e[96m]\e[38;5;84m dex2jar
\e[96m[\e[38;5;82m5\e[96m]\e[38;5;84m Sakis3G
\e[96m[\e[38;5;82m6\e[96m]\e[38;5;84m smali


$prt
"
}

ets(){
echo -e "\e[93m\e[1m
\e[38;5;82m[+] Extras

\e[96m[\e[38;5;82m1\e[96m]\e[38;5;84m Wifresti
\e[96m[\e[38;5;82m2\e[96m]\e[38;5;84m Squid3


$prt
"
}

t(){
echo -e "\e[93m\e[1m
                1   1
                  0   0
                   10  11
                     01  10
              01  10  0101011
         010101000110101101100
    10010110100101110000011001010
      000101101     010101000110100
  000101101             10000110  00             [+] Insert the desired option number.
     01101                  110001  01           [+] The repositories will be added to /etc/apt/sources.list.d/kali.list.
  0101101                    10011001101         [!] Don't upgrade if your OS is not Kali! (a̶p̶t̶-̶g̶e̶t̶ ̶u̶p̶g̶r̶a̶d̶e)
     01101                     01110010
    011010                       0001100
      01101                         110100
        01110                         001100
          010010                        101
           1101101                     10
                010010
                   110100
                        1011
                           101
                              001
                                0
                                 1
                                 1

\e[96m[\e[38;5;82m1\e[96m]\e[38;5;84m Add kali repositories
\e[96m[\e[38;5;82m2\e[96m]\e[38;5;84m Add kali repositories and determine where to save and set file name
\e[96m]\e[38;5;82m3\e[96m]\e[38;5;84m Remove all kali repositories
\e[96m[\e[38;5;82m4\e[96m]\e[38;5;84m Update

"
}

################
####;begin;#####
################


a

	while true
	do
		read -p $'\e[91mkat >\e[0m ' z

		if [ $z = 1 ]; then
			clear
			b #KLTools menu
			while true
			do
				read -p $'\e[91mkat >\e[0m ' x
				case $x in
					1)
						tool=("" "acccheck" "ace-voip" "amap" "automater" "none" "braa" "casefile" "cdpsnarf" "cisco-torch" "cookie-cadger" "copy-router-config" "dmitry" "dnmap" "dnsenum"
						"dnsmap" "dnsrecon" "dnstracer" "dnswalk" "dotdotpwn" "enum4linux" "enumiax" "exploitdb" "fierce" "firewalk" "fragroute" "fragrouter" "ghost-phisher" "golismero"
						"goofile" "lbd" "maltego-teeth" "masscan" "metagoofil" "miranda" "nmap" "none" "p0f" "parsero" "recon-ng" "set" "smtp-user-enum" "snmpcheck" "sslcaudit" "sslsplit"
						"sslstrip" "sslyze" "thc-ipv6" "theharvester" "tlssled" "twofi" "urlcrazy" "wireshark" "wol-e" "xplico" "ismtp" "intrace" "hping3")
						g
						while true
						do
							f
							if [[ $y = ?(+|-)+([0-9]) ]]; then 
								[ $y -ne 0 ] && [ $y -ne 1 ] && [ $y -ne  5 ] && [ $y -ne  36 ] && [ $y -lt 58 ] && e #can't be zero and none of the options that require commands besides apt-get install, if this condition is true, run apt-get install
								[ $y -eq 1 ] && echo `wget https://raw.githubusercontent.com/qashqao/acccheck/master/acccheck.pl` > /dev/null
								[ $y -eq 5 ] && echo `wget http://www.morningstarsecurity.com/downloads/bing-ip2hosts-0.4.tar.gz && tar -xzvf bing-ip2hosts-0.4.tar.gz && cp bing-ip2hosts-0.4/bing-ip2hosts /usr/local/bin/` > /dev/null
								[ $y -eq 36 ] && echo 'Download here => https://www.ntop.org/'
							elif [ $y = "back" ]; then
								clear
								b #KLTools menu
								break
							elif [ $y = "clear" ]; then
								clear
								g #Information Gathering menu
							elif [ $y = "home" ]; then
								bash $0; exit
							elif [ $y = "exit" ]; then
								exit
							fi
						done;;

					2)
						tool=("" "bbqsql" "bed" "cisco-auditing-tool" "cisco-global-exploiter" "cisco-ocs" "cisco-torch" "copy-router-config" "none" "none" "doona" "dotdotpwn"
						"greenbone-security-assistant" "none" "hexorbase" "none" "jsql" "lynis" "nmap" "ohrwurm" "openvas-administrator" "openvas-cli" "openvas-manager"
						"openvas-scanner" "oscanner" "powerfuzzer" "sfuzz" "sidguesser" "siparmyknife" "sqlmap" "sqlninja" "sqlsus" "thc-ipv6" "tnscmd10g" "unix-privesc-check"
						"yersinia")
						h
						while true
						do
							f
							if [[ $y = ?(+|-)+([0-9]) ]]; then 
								[ $y -ne 0 ] && [ $y -ne 8 ] && [ $y -ne 9 ] && [ $y -ne 13 ] && [ $y -ne 15 ] && [ $y -lt 36 ] && e #can't be zero and none of the options that require commands besides apt-get install, if this condition is true, run apt-get install
								[ $y -eq 8 ] && echo `apt-get install git && git clone https://github.com/stasinopoulos/commix.git commix && cd commix && python ./commix.py --install`
								[ $y -eq 9 ] && echo `ls`
								[ $y -eq 13 ] && echo `apt-get install git && git clone git://git.kali.org/packages/gsd.git`
								[ $y -eq 15 ] && echo 'comando here4'
							elif [ $y = "back" ]; then
								clear
								b #KLTools menu
								break
							elif [ $y = "clear" ]; then
								clear
								h #Vulnerability Analysis menu
							elif [ $y = "home" ]; then
								bash $0; exit
							elif [ $y = "exit" ]; then
								exit
							fi
						done;;

					3)
						tool=("" "aircrack-ng" "asleap" "none" "none" "none" "blueranger" "bluesnarfer" "bully" "cowpatty" "crackle" "eapmd5pass" "fern-wifi-cracker" "ghost-phisher"
						"giskismet" "none" "kalibrate-rtl" "killerbee" "kismet" "mdk3" "mfcuk" "mfoc" "mfterm" "multimon-ng" "pixiewps" "reaver" "redfang" "rtlsdr-scanner" "spooftooph"
						"wifi-honey" "wifitap" "wifite")
						i
						while true
						do
							f
							if [[ $y = ?(+|-)+([0-9]) ]]; then 
								[ $y -ne 0 ] && [ $y -ne 4 ] && [ $y -ne 5 ] && [ $y -lt 32 ] && e #can't be zero and none of the options that require commands besides apt-get install, if this condition is true, run apt-get install
								[ $y -eq 4 ] && echo `apt-get install -y git && git clone git://git.kali.org/packages/bluemaho.git` > /dev/null
								[ $y -eq 5 ] && echo `apt-get install -y git && git clone git://git.kali.org/packages/bluepot.git` > /dev/null
							elif [ $y = "back" ]; then
								clear
								b #KLTools menu
								break
							elif [ $y = "clear" ]; then
								clear
								i #Wireless Attacks menu
							elif [ $y = "home" ]; then
								bash $0; exit
							elif [ $y = "exit" ]; then
								exit
							fi
						done;;

					4)
						tool=("" "apache-users" "arachni" "bbqsql" "blindelephant" "burpsuite" "none" "cutycapt" "davtest" "deblaze" "dirb" "dirbuster" "fimap" "funkload" "grabber" "jboss-autopwn"
						"joomscan" "jsql" "maltego-teeth" "metasploit" "padbuster" "paros" "parsero" "plecost" "powerfuzzer" "proxystrike" "recon-ng" "skipfish" "sqlmap" "sqlninja" "sqlsus" "ua-tester"
						"uniscan" "vega" "w3af" "webscarab" "none" "none" "websploit" "wfuzz" "wpscan" "xsser" "zaproxy")
						j
						while true
						do
							f
							if [[ $y = ?(+|-)+([0-9]) ]]; then  #int only
								[ $y -ne 0 ] && [ $y -ne 6 ] && [ $y -ne 19 ] && [ $y -ne 35 ] && [ $y -ne 36 ] && [ $y -lt 42 ] && e #can't be zero and none of the options that require commands besides apt-get install, if this condition is true, run apt-get install
								[ $y -eq 6 ] && echo `apt-get install git && git clone https://github.com/stasinopoulos/commix.git commix && cd commix && python ./commix.py --install` > /dev/null 
								[ $y -eq 19 ] && apt install sqlninja curl && curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && chmod 755 msfinstall && ./msfinstall && rm ./msfinstall
								[ $y -eq 35 ] && echo 'wget https://ufpr.dl.sourceforge.net/project/owasp/WebScarab/20070504-1631/webscarab-installer-20070504-1631.jar; '
								[ $y -eq 36 ] && echo `apt-get install git && git clone git://git.kali.org/packages/webslayer.git` > /dev/mull 
							elif [ $y = "back" ]; then
								clear
								b #KLTools menu
								break
							elif [ $y = "clear" ]; then
								clear
								j #Web Applications menu
							elif [ $y = "home" ]; then
								bash $0; exit
							elif [ $y = "exit" ]; then
								exit
							fi
						done;;

					5)
						tool=("" "burpsuite" "dnschef" "fiked" "hamster-sidejack" "hexinject" "iaxflood" "inviteflood" "ismtp" "none" "mitmproxy" "ohrwurm" "protos-sip" "rebind" "responder"
						"rtpbreak" "rtpinsertsound" "rtpmixsound" "sctpscan" "siparmyknife" "sipp" "sipvicious" "sniffjoke" "sslsplit" "sslstrip" "thc-ipv6" "voiphopper" "webscarab"
						"wifi-honey" "wireshark" "xspy" "yersinia" "zaproxy")
						k
						while true
						do
							f
							if [[ $y = ?(+|-)+([0-9]) ]]; then 
								[ $y -ne 0 ] && [ $y -ne 9 ] && [ $y -lt 33 ] && e #can't be zero and none of the options that require commands besides apt-get install, if this condition is true, run apt-get install
								[ $y -eq 9 ] && echo `apt-get install git && git clone git://git.kali.org/packages/isr-evilgrade.git` > /dev/null
							elif [ $y = "back" ]; then
								clear
								b #KLTools menu
								break
							elif [ $y = "clear" ]; then
								clear
								k #Sniffing & Spoofing menu
							elif [ $y = "home" ]; then
								bash $0; exit
							elif [ $y = "exit" ]; then
								exit
							fi
						done;;

					6)
						tool=("" "cryptcat" "cymothoa" "dbd" "dns2tcp" "http-tunnel" "httptunnel" "intersect" "nishang" "polenum" "powersploit" "pwnat" "ridenum" "sbd" "u3-pwn" "webshells" "weevely")
						l
						while true
						do
							f
							if [[ $y = ?(+|-)+([0-9]) ]]; then 
								[ $y -ne 0 ] && [ $y -lt 17 ] && e #can't be zero and none of the options that require commands besides apt-get install, if this condition is true, run apt-get install
							elif [ $y = "back" ]; then
								clear
								b #KLTools menu
								break
							elif [ $y = "clear" ]; then
								clear
								l #Maintaining Access menu
							elif [ $y = "home" ]; then
								bash $0; exit
							elif [ $y = "exit" ]; then
								exit
							fi
						done;;

					7)
						tool=("" "casefile" "cutycapt" "dos2unix" "dradis" "keepnote" "magictree" "metagoofil" "nipper-ng" "pipal" "android-sdk")
						m
						while true
						do
							f
							if [[ $y = ?(+|-)+([0-9]) ]]; then
								e #can't be zero and none of the options that require commands besides apt-get install, if this condition is true, run apt-get install
							elif [ $y = "back" ]; then
								clear
								b #KLTools menu
								break
							elif [ $y = "clear" ]; then
								clear
								m #Reporting Tools menu
							elif [ $y = "home" ]; then
								bash $0; exit
							elif [ $y = "exit" ]; then
								exit
							fi
						done;;

					8)
						tool=("" "armitage" "backdoor-factory" "beef-xss" "cisco-auditing-tool" "cisco-global-exploiter" "cisco-ocs" "cisco-torch"
						"none" "crackle" "jboss-autopwn" "linux-exploit-suggester" "maltego-teeth" "set" "shellnoob" "sqlmap" "thc-ipv6" "yersinia")
						n
						while true
						do
							f
							if [[ $y = ?(+|-)+([0-9]) ]]; then 
								[ $y -ne 0 ] && [ $y -ne 8 ] && [ $y -lt 18 ] && e #can't be zero and none of the options that require commands besides apt-get install, if this condition is true, run apt-get install
								[ $y -eq 8 ] && echo `apt-get install git && git clone https://github.com/stasinopoulos/commix.git commix && cd commix && python ./commix.py --install`
							elif [ $y = "back" ]; then
								clear
								b #KLTools menu
								break
							elif [ $y = "clear" ]; then
								clear
								n #Exploitation Tools menu
							elif [ $y = "home" ]; then
								bash $0; exit
							elif [ $y = "exit" ]; then
								exit
							fi
						done;;

					9)
						tool=("" "binwalk" "bulk-extractor" "none" "chntpw" "cuckoo" "dc3dd" "ddrescue" "none" "none" "dumpzilla" "extundelete" "foremost"
						"galleta" "guymager" "iphone-backup-analyzer" "p0f" "pdf-parser" "pdfid" "pdgmail" "peepdf" "none" "volatility" "xplico")
						o
						while true
						do
							f
							if [[ $y = ?(+|-)+([0-9]) ]]; then
								[ $y -ne 0 ] && [ $y -ne 3 ] && [ $y -ne 8 ] && [ $y -ne 9 ] && [ $y -ne 21 ] && e
								[ $y -eq 3 ] && echo `apt-get install git && git clone git://git.kali.org/packages/capstone.git`
								[ $y -eq 8 ] && echo 'none'
								[ $y -eq 9 ] && echo `apt-get install git && git clone git://git.kali.org/packages/distorm3.git`
								[ $y -eq 21 ] && echo 'none'
							elif [ $y = "back" ]; then
								clear
								b #KLTools menu
								break
							elif [ $y = "clear" ]; then
								clear
								o #Forensics Tools menu
							elif [ $y = "home" ]; then
								bash $0; exit
							elif [ $y = "exit" ]; then
								exit
							fi
						done;;

					10)
						tool=("" "dhcpig" "funkload" "iaxflood" "none" "inviteflood" "ipv6-toolkit" "mdk3" "reaver" "rtpflood" "slowhttptest" "t50" "termineter" "thc-ipv6" "thc-ssl-dos")
						p
						while true
						do
							f
							if [[ $y = ?(+|-)+([0-9]) ]]; then
								[ $y -ne 0 ] && [ $y -ne 4 ] && [ $y -lt 15 ] && e #can't be zero and none of the options that require commands besides apt-get install, if this condition is true, run apt-get install
								[ $y -eq 4 ] && echo `apt-get install git && git clone git://git.kali.org/packages/inundator.git`
							elif [ $y = "back" ]; then
								clear
								b #KLTools menu
								break
							elif [ $y = "clear" ]; then
								clear
								p #Stress Testing menu
							elif [ $y = "home" ]; then
								bash $0; exit
							elif [ $y = "exit" ]; then
								exit
							fi
						done;;

					11)
						tool=("" "acccheck" "burpsuite" "cewl" "chntpw" "cisco-auditing-tool" "cmospwd" "creddump" "crunch" "dbpwaudit" "findmyhash" "gpp-decrypt" "hash-identifier" "hexorbase" "thc-hydra"
						"john" "johnny" "keimpx" "maltego-teeth" "maskprocessor" "multiforcer" "ncrack" "oclgausscrack" "pack" "patator" "none" "polenum" "rainbowcrack" "rcracki-mt" "rsmangler"
						"none" "statsprocessor" "thc-pptp-bruter" "truecrack" "webscarab" "wordlists" "zaproxy")
						q
						while true
						do
							f
							if [[ $y = ?(+|-)+([0-9]) ]]; then
								[ $y -ne 0 ] && [ $y -ne 1 ] [ $y -ne 9 ] && [ $y -ne 14 ] && [ $y -ne 25 ] && [ $y -ne 30 ] && [ $y -lt 37 ] && e #can't be zero and none of the options that require commands besides apt-get install, if this condition is true, run apt-get install
								[ $y -eq 1 ] && echo `wget https://raw.githubusercontent.com/qashqao/acccheck/master/acccheck.pl` > /dev/null
								[ $y -eq 9 ] && echo 'Download here => https://www.cqure.net/wp/tools/database/dbpwaudit/'
								[ $y -eq 14 ] && git clone https://github.com/vanhauser-thc/thc-hydra.git && cd thc-hydra && ./configure && make
								[ $y -eq 15 ] && git clone https://github.com/magnumripper/JohnTheRipper.git
								[ $y -eq 30 ] && git clone https://github.com/skylergrammer/sqldict.git
							elif [ $y = "back" ]; then
								clear
								b #KLTools menu
								break
							elif [ $y = "clear" ]; then
								clear
								q #Password Attacks menu
							elif [ $y = "home" ]; then
								bash $0; exit
							elif [ $y = "exit" ]; then
								exit
							fi
						done;;

					12)
						tool=("" "apktool" "dex2jar" "python-diStorm3" "edb-debugger" "jad" "javasnoop" "JD" "OllyDbg" "smali" "Valgrind" "YARA")
						r
						while true
						do
							f
							if [[ $y = ?(+|-)+([0-9]) ]]; then
								[[ $y > 0 ]] && e #can't be zero and none of the options that require commands besides apt-get install, if this condition is true, run apt-get install
							elif [ $y = "back" ]; then
								clear
								b #KLTools menu
								break
							elif [ $y = "clear" ]; then
								clear
								r #Reverse Engineering menu
							elif [ $y = "home" ]; then
								bash $0; exit
							elif [ $y = "exit" ]; then
								exit
							fi
						done;;
						
					13)
						tool=("" "android-sdk" "apktool" "arduino" "dex2jar" "sakis3g" "smali")
						s
						while true
						do
							f
							if [[ $y = ?([1-6]) ]]; then
								e #can't be zero and none of the options that require commands besides apt-get install, if this condition is true, run apt-get install
							elif [ $y = "back" ]; then
								clear
								b #KLTools menu
								break
							elif [ $y = "clear" ]; then
								clear
								s #Hardware Hacking menu
							elif [ $y = "home" ]; then
								bash $0; exit
							elif [ $y = "exit" ]; then
								exit
							fi
						done;;
						
					14)
						ets
						while true
						do
							f
							[[ $y = 1 ]] && git clone https://github.com/LionSec/wifresti.git && cp wifresti/wifresti.py /usr/bin/wifresti && chmod +x /usr/bin/wifresti && wifresti
							[[ $y = 2 ]] && apt install squid3
							if [ $y = "back" ]; then
								clear; b; break
							elif [ $y = "clear" ]; then
								clear
								ets
							elif [ $y = "home" ]; then 
								back $0
								exit
                                                        elif [ $y = "exit" ]; then
                                                        	exit
                                                        fi
						done;;
						
					clear)
						clear
						b;;
					back)
						clear
						a
						break;;
					home)
						bash $0; exit;; 
					exit)
						exit;;
				esac
			done
		elif [ $z = 2 ]; then
			clear
			c #DevTools
			cc #Code editors menu
			while true
			do
				read -p $'\e[91mkat >\e[0m '  w
				if [[ $w = ?([1-4]) ]]; then
					opts=("" "apache2" "mysql-server" "mysql-client" "php")
					apt-get install ${opts[$w]}
				elif [ $w = 5 ]; then
					d #Code editors menu
					while true
					do
						editor=("" "sublime-text" "vim" "joe" "emacs" "gedit" "kwrite" "geany")
						read -p $'\e[91mkat >\e[0m ' p
						[ $p = 1 ] && wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add - && apt-get install -y apt-transport-https && echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list && apt-get update && apt-get install sublime-text
					        if [[ $p = ?([2-7]) ]]; then
						    apt-get install ${editor[$p]}
						elif [ $p = "back" ]; then
						    clear
						    c
						    cc
						    break
						elif [ $p = "clear" ]; then
						     clear
						     d
						elif [ $p = "home" ]; then
						    bash $0; exit
						elif [ $p = "exit" ]; then
						    exit
						fi
					done
				elif [ $w = "back" ]; then
					clear
					a
					break
				elif [ $w = "clear" ]; then
					clear
					c
					cc
				elif [ $w = "home" ]; then
					bash $0; exit
				elif [ $w = "exit" ]; then
					exit
				fi
			done
		elif [ $z = 3 ]; then
			clear
			t
			while true
			do
				read -p $'\e[91mkat >\e[0m ' w
				case $w in
					1)
						echo -e "deb http://http.kali.org/kali kali-rolling main contrib non-free\ndeb-src http://http.kali.org/kali kali-rolling main contrib non-free" > /etc/apt/sources.list.d/kali.list && wget -q -O - https://archive.kali.org/archive-key.asc | apt-key add && echo -e '\e[38;5;99m[+] Ready!';;
					2)
						read -p $'\e[91mdir >\e[0m ' dir
						read -p $'\e[91mfile >\e[0m ' file
						echo -e "deb http://http.kali.org/kali kali-rolling main contrib non-free\ndeb-src http://http.kali.org/kali kali-rolling main contrib non-free" > $dir/$file && wget -q -O - https://archive.kali.org/archive-key.asc | apt-key add && echo -e '\e[38;5;99m[+] Ready!';;
					3)
						if [ -z $dir ]; then
							rm /etc/apt/sources.list.d/kali.list
						elif [ -n $dir ]; then
							rm $dir/$file
						fi
						echo -e '\e[38;5;99m[+] Ready!';;
					4)
						apt-get update;;
					back)
						clear
						a
						break;;
					clear)
						clear
						t;;
					home)
						bash $0; exit;;
					exit)
						exit
				esac
			done
		elif [ $z = 4 ]; then
			echo -e "\e[38;5;99mEnter the number corresponding to the option you want."
		elif [ $z = "clear" ]; then
			clear
			a
		elif [ $z = "home" ]; then
			bash $0; exit
		elif [ $z = "exit" ] ||	 [ $z = "back" ]; then
			exit
		fi
done
