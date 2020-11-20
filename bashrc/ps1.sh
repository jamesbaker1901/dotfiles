# GBT prompt
export GBT_CARS='Os, Hostname, Dir, Git, Custom, Kubectl, Time, Status, Sign'
export GBT_SEPARATOR=""
export GBT_BEGINNING_TEXT='┌─'
export GBT_BEGINNING_FG='light_blue'
export GBT_CAR_STATUS_BG='default'

export GBT_CAR_OS_BG='default'
export GBT_CAR_OS_FORMAT='[{{ Symbol }}'
export GBT_CAR_OS_FG='white'

export GBT_CAR_HOSTNAME_BG='default'
export GBT_CAR_HOSTNAME_FG='white'
export GBT_CAR_HOSTNAME_FORMAT='{{ User }}]'

export GBT_CAR_DIR_BG='default'
export GBT_CAR_DIR_FORMAT='─({{ Dir }})'
export GBT_CAR_DIR_FG='yellow'

export GBT_CAR_GIT_BG='default'
export GBT_CAR_GIT_FORMAT='─({{ Icon }}{{ Head }} {{ Status }}{{ Ahead }}{{ Behind }})'
export GBT_CAR_GIT_FG='white'

export GBT_CAR_CUSTOM_FG='blue'
export GBT_CAR_CUSTOM_BG='default'
export GBT_CAR_CUSTOM_FORMAT='{{ Text }}'
export GBT_CAR_CUSTOM_TEXT_TEXT='└─'
export GBT_CAR_CUSTOM_WRAP='1'

export GBT_CAR_TIME_BG='default'
export GBT_CAR_TIME_TIME_FORMAT='15:04'
export GBT_CAR_TIME_FORMAT='[{{ Time }}]'
export GBT_CAR_TIME_FG='green'

#export GBT_CAR_KUBECTL_WRAP='1'
export GBT_CAR_KUBECTL_FORMAT='({{ Cluster }}|{{ Namespace }})─'
export GBT_CAR_KUBECTL_BG='default'
export GBT_CAR_KUBECTL_DISPLAY='0'
PROMPT='$(gbt $?)'

