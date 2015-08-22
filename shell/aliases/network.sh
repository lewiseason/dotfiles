alias 88='ping 8.8.8.8 | grep -o -e "time=.*$"'
alias 84='ping 8.8.4.4 | grep -o -e "time=.*$"'

diff-iptables() {
  bold=$(tput bold)
  normal=$(tput sgr0)
  pattern=/^[#:]/d

  diff -y <(echo "${bold}Running${normal}"; iptables-save | sed -e "$pattern") <(echo "${bold}Saved${normal}"; sed -e "$pattern" $1)
}
