exec 3>&2
trap 'exec 2> >(tee >(read -t 0.01 stdin; DARN_ERROR=$stdin goclient-rest &> /dev/null))' DEBUG
PROMPT_COMMAND='exec 2>&3'
