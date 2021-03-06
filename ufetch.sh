#!/bin/sh
#
# ufetch-void - tiny system info for void linux
#

## INFO

# user is already defined
hostname="$(hostname)"
os='Void Linux'
kernel="$(uname -sr)"
uptime="$(uptime -p | sed 's/up //')"
packages="$(xbps-query -l | wc -l)"
shell="$(basename ${SHELL})"
WM='i3-gaps'

## DEFINE COLORS

# probably don't change these
bc="$(tput bold)"		# bold
c0="$(tput setaf 0)"	# black
c1="$(tput setaf 1)"	# red
c2="$(tput setaf 2)"	# green
c3="$(tput setaf 3)"	# yellow
c4="$(tput setaf 4)"	# blue
c5="$(tput setaf 5)"	# magenta
c6="$(tput setaf 6)"	# cyan
c7="$(tput setaf 7)"	# white
rc="$(tput sgr0)"		# reset

# you can change these
lc="${rc}${bc}${c2}"	# labels
nc="${rc}${bc}${c2}"	# user and hostname
ic="${rc}${bc}${c7}"	# info
fc="${rc}${bc}${c2}"	# first color
sc="${rc}${c2}"			# second color

## OUTPUT

cat <<EOF

${fc}      _______    ${nc}${USER}${ic}@${nc}${hostname}${rc}
${sc}   _ ${fc}\______ \   ${lc}OS:        ${ic}${os}${rc}
${sc}  | \  ${fc}___  \ |  ${lc}KERNEL:    ${ic}${kernel}${rc}
${sc}  | | ${fc}/   \ | |  ${lc}UPTIME:    ${ic}${uptime}${rc}
${sc}  | | ${fc}\___/ | |  ${lc}PACKAGES:  ${ic}${packages}${rc}
${sc}  | \______ ${fc}\_|  ${lc}SHELL:     ${ic}${shell}${rc}
${sc}   \_______\     ${lc}WM:        ${ic}${WM}${rc}

EOF
