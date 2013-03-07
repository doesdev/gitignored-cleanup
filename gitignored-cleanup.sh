giti=.gitignore

if [ -f $giti ]

then

  while read line
  do
    [[ $line = \#* ]] && continue
    [[ $line = \=* ]] && continue
    [[ -z "$line" ]] && continue
    
    # Toggle comment on all four git commands to test before executing

  case $line in
	/*) 
		declare gitrmd=$(echo $PWD$line)
		git rm -r --cached --ignore-unmatch -- $gitrmd 2>/dev/null
		#git rm -n -r --cached --ignore-unmatch -- $gitrmd
	;&
	*)	
		git rm -r --cached --ignore-unmatch -- $line 2>/dev/null
		#git rm -n -r --cached --ignore-unmatch -- $line
	;;
  esac
	
  done < $giti

fi
