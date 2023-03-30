#
# This is Korn Shell syntax, read via my init scripts.
#
# Tested with ksh93 on OpenBSD:
#         version         sh (AT&T Research) 93u+m/1.0.3 2022-08-25
#

#
# Testing for the DISPLAY environment variable to be set to ensure this
# is only enabled for interactive sessions, not 'doas' etc.
#
if [[ ${DISPLAY:=none} != "none" ]]; then
	export SSH_AUTH_SOCK=$(gpgconf --list-dirs agent-ssh-socket)
	export GPG_TTY=$(tty)
fi
