() {
	setopt local_options
	setopt extendedglob

	local zcd=${1}
	local zcomp_hours=${2:-24} # how often to regenerate the file
	local lock_timeout=${2:-1} # change this if compinit normally takes longer to run
	local lockfile=${zcd}.lock

	if [ -f ${lockfile} ]; then 
		if [[ -f ${lockfile}(#qN.mm+${lock_timeout}) ]]; then
			(
				echo "${lockfile} has been held by $(< ${lockfile}) for longer than ${lock_timeout} minute(s)."
				echo "This may indicate a problem with compinit"
			) >&2 
		fi
		# Exit if there's a lockfile; another process is handling things
		return
	else
		# Create the lockfile with this shell's PID for debugging
		echo $$ > ${lockfile}
		# Ensure the lockfile is removed
		trap "rm -f ${lockfile}" EXIT
	fi

	autoload -Uz compinit

	if [[ -n ${zcd}(#qN.mh+${zcomp_hours}) ]]; then
		# The file is old and needs to be regenerated
		compinit
	else
		# The file is either new or does not exist. Either way, -C will handle it correctly
		compinit -C
	fi
} ${ZDOTDIR:-$HOME}/.zcompdump 

# Completion for dot command
_dot() {
  if [[ $words[1] == "dot" ]]; then
    compadd pull push commit diff status apply bootstrap cd benchmark
    return
  fi
}
compdef _dot dot


