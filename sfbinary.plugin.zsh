function _sfbinary_subcommand() {
	list=`symfony $1 --no-ansi | sed "1,/Available commands/d" | awk '/^  ?[^ ]+ / { print $1 }'`
	_arguments "1: :($list)"
}

function _sfbinary() {
	local line
	list=`symfony list --no-ansi | sed "1,/Available commands/d" | sed "/Available wrappers/,$ d" | sed "s/ [A-Z].*//" | tr , '\n' | sed 's/ //g'`
	
	_arguments -C \
	        "1: :($list composer console)" \
	        "*::arg:->args"
	
	case $line[1] in
	        console)
	            _sfbinary_subcommand 'console'
	        ;;
	        composer)
	            _sfbinary_subcommand 'composer'
	        ;;
	    esac
}

compdef _sfbinary symfony
