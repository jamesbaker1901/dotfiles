# left prompt
export GBT_CARS='Status, Dir, Git, Sign'
export GBT_RCARS='Kubectl, Hostname, Time'

export GBT_CARS_OS_BG="131;148;150"
export GBT_CAR_OS_FORMAT=' {{ Symbol }} '

export GBT_CAR_DIR_BG='152;195;121'
export GBT_CAR_DIR_FG='44;50;59'
export GBT_CAR_DIR_DEPTH='2'

export GBT_CAR_GIT_FG='44;50;59'
export GBT_CAR_GIT_BG='210;210;210'

export GBT_CAR_SIGN_FG='152;195;121'

# right prompt
export GBT_CAR_KUBECTL_FORMAT=' {{ Icon }} {{ Cluster }}|{{ Namespace }} '
export GBT_CAR_KUBECTL_BG='189;174;147'
export GBT_CAR_KUBECTL_FG='44;50;59'
export GBT_CAR_KUBECTL_DISPLAY='0'

export GBT_CAR_HOSTNAME_BG='44;50;59'
export GBT_CAR_HOSTNAME_FG='210;210;210'
export GBT_CAR_HOSTNAME_FORMAT=' {{ User }} '

export GBT_CAR_TIME_TIME_FORMAT='15:04'
export GBT_CAR_TIME_FORMAT=' {{ Time }} '
export GBT_CAR_TIME_BG='6;153;221'
export GBT_CAR_TIME_FG='44;50;59'

PROMPT='$(gbt $?)'
RPROMPT='$(gbt -right)'

ps1min () {
	RPROMPT=""
	export GBT_CARS_KUBECTL_DISPLAY='0'
	export GBT_CAR_DIR_DISPLAY='0'
	export GBT_CAR_TIME_DISPLAY='0'
	export GBT_CAR_HOSTNAME_DISPLAY='0'
}
ps1max () {
	RPROMPT='$(gbt -right)'
	export GBT_CARS_KUBECTL_DISPLAY='1'
	export GBT_CAR_DIR_DISPLAY='1'
	export GBT_CAR_TIME_DISPLAY='1'
	export GBT_CAR_HOSTNAME_DISPLAY='1'
}

