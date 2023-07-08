# Color Validation
DF='\e[39m'
Bold='\e[1m'
Blink='\e[5m'
yell='\e[33m'
red='\e[31m'
green='\e[32m'
blue='\e[34m'
PURPLE='\e[35m'
cyan='\e[36m'
Lred='\e[91m'
Lgreen='\e[92m'
Lyellow='\e[93m'
NC='\e[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
LIGHT='\033[0;37m'
RB='\e[31;1m'
GB='\e[32;1m'
YB='\e[33;1m'
BB='\e[34;1m'
MB='\e[35;1m'
CB='\e[35;1m'
WB='\e[37;1m'
clear
cek=$(service ssh status | grep active | cut -d ' ' -f5)
if [ "$cek" = "active" ]; then
stat=-f5
else
stat=-f7
fi
ssh=$(service ssh status | grep active | cut -d ' ' $stat)
if [ "$ssh" = "active" ]; then
ressh="${green}ON${NC}"
else
ressh="${red}OFF${NC}"
fi
ngx=$(service nginx status | grep active | cut -d ' ' $stat)
if [ "$ngx" = "active" ]; then
resngx="${green}ON${NC}"
else
resngx="${red}OFF${NC}"
fi
dbr=$(service dropbear status | grep active | cut -d ' ' $stat)
if [ "$dbr" = "active" ]; then
resdbr="${green}ON${NC}"
else
resdbr="${red}OFF${NC}"
fi
v2r=$(service xray status | grep active | cut -d ' ' $stat)
if [ "$v2r" = "active" ]; then
resv2r="${green}ON${NC}"
else
resv2r="${red}OFF${NC}"
fi
Exp2=$"Lifetime"
domain=$(cat /usr/local/etc/xray/domain)
ISP=$(cat /usr/local/etc/xray/org)
WKT=$(curl -s ipinfo.io/timezone?token=7578ac19afd785 )
IPVPS=$(curl -s ipinfo.io/ip?token=7578ac19afd785 )
DATE2=$( date -R | cut -d " " -f -5 )
clear
echo -e "\e[33m ==================================================\033[0m"
echo -e "\e[33m  ██████╗ ██╗ ██████╗ ██╗████████╗ █████╗ ██╗	  \033[0m"
echo -e "\e[33m  ██╔══██╗██║██╔════╝ ██║╚══██╔══╝██╔══██╗██║	  \033[0m"
echo -e "\e[33m  ██║  ██║██║██║  ███╗██║   ██║   ███████║██║	  \033[0m"
echo -e "\e[33m  ██║  ██║██║██║   ██║██║   ██║   ██╔══██║██║	  \033[0m"
echo -e "\e[33m  ██████╔╝██║╚██████╔╝██║   ██║   ██║  ██║███████╗ \033[0m"
echo -e "\e[33m  ╚═════╝ ╚═╝ ╚═════╝ ╚═╝   ╚═╝   ╚═╝  ╚═╝╚══════╝ \033[0m"
echo -e "\e[32m          C\033[0m \e[31mE\033[0m \e[33mL\033[0m \e[34mL\033[0m \e[35mU\033[0m \e[36mL\033[0m \e[32mA\033[0m \e[31mR\033[0m   \e[33mF\033[0m \e[34mR\033[0m \e[35mE\033[0m \e[36mE\033[0m \e[32mD\033[0m O\033[0m \e[32mM\033[0m"
echo -e "\e[33m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\e[32m                  ❇  \e[31mV\033[0m\e[33mP\033[0m\e[34mS\033[0m \e[35mI\033[0m\e[36mN\033[0m\e[37mF\033[0m\e[31mO\033[0m \e[32m❇                  \033[0m"
echo -e "\e[33m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\e[32m ❇\033[0m NGINX ${NC}\e[31m:\033[0m $resngx""${BICyan}\e[32m       ❇\033[0m XRAY ${NC}\e[31m:\033[0m $resv2r""${BICyan}\e[32m       ❇\033[0m TROJAN ${NC}\e[31m:\033[0m $resv2r"
echo -e "\e[33m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\e[32m ❇\033[0m Operating System \e[31m:\033[0m "`hostnamectl | grep "Operating System" | cut -d ' ' -f5-`
echo -e "\e[32m ❇\033[0m IP               \e[31m:\033[0m $IPVPS"
echo -e "\e[32m ❇\033[0m ASN              \e[31m:\033[0m $ISP"
echo -e "\e[32m ❇\033[0m CITY             \e[31m:\033[0m $WKT"
echo -e "\e[32m ❇\033[0m DOMAIN           \e[31m:\033[0m \e[32m$domain\033[0m"
echo -e "\e[32m ❇\033[0m Expired          \e[31m:\033[0m \e[32m$Exp2\033[0m"
echo -e "\e[32m ❇\033[0m DATE & TIME      \e[31m:\033[0m $DATE2"
echo -e "\e[33m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\e[32m                  ❇  \e[31mM\033[0m\e[33m-\033[0m\e[34mE\033[0m\e[35m-\033[0m\e[36mN\033[0m\e[37m-\033[0m\e[31mU\033[0m\e[32m ❇                   \033[0m"
echo -e "\e[33m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\e[32m [1]\033[0m Vmess Menu             \e[32m [4]\033[0m Log Create Account"
echo -e "\e[32m [2]\033[0m Vless Menu             \e[32m [5]\033[0m Change Xray Mod"
echo -e "\e[32m [3]\033[0m Trojan Menu            \e[32m [6]\033[0m Speedtest"
echo -e "\e[33m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\e[32m               ❇  \e[31mU\033[0m\e[32m-\033[0m\e[33mT\033[0m\e[34m-\033[0m\e[35mI\033[0m\e[36m-\033[0m\e[37mL\033[0m\e[31m-\033[0m\e[32mI\033[0m\e[33m-\033[0m\e[34mT\033[0m\e[35m-\033[0m\e[31mY\033[0m \e[32m❇              \033[0m"
echo -e "\e[33m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\e[32m [7]\033[0m Change Domain          \e[32m [9]\033[0m  Check DNS Status"
echo -e "\e[32m [8]\033[0m Cert Acme.sh           \e[32m [10]\033[0m DNS Setting"
echo -e "\e[33m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\e[32m        ❇\033[0m \e[33mScript Gratis Premium Nie Bos\033[0m \e[32m❇              \033[0m"
echo -e "\e[33m ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━\033[0m"
echo -e "\e[32m            ❇ \e[34mD\033[0m \e[32mI\033[0m \e[33mG\033[0m \e[31mI\033[0m \e[32mT\033[0m \e[35mA\033[0m \e[36mL\033[0m \e[37m-\033[0m \e[34mN\033[0m \e[33mE\033[0m \e[31mT\033[0m \e[32m❇              \033[0m"
echo -e "\e[33m ==================================================\033[0m"
echo -e ""
read -p " Select Menu :  "  opt
echo -e ""
case $opt in
1) clear ; vmess ;;
2) clear ; vless ;;
3) clear ; trojan ;;
4) clear ; log-create ;;
5) clear ; xraymod ;;
6) clear ; speedtest ;;
7) clear ; dns ;;
8) clear ; certxray ;;
9) clear ;
resolvectl status
echo ""
echo ""
read -n 1 -s -r -p "Press any key to back on menu"
echo ""
echo ""
menu ;;
10) clear ; changer ;;
x) exit ;;
*) echo -e "${RB}salah input${NC}" ; sleep 1 ; menu ;;
esac
