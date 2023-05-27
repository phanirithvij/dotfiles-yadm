function dfhp
  # https://stackoverflow.com/a/1655488/8608146
  # https://unix.stackexchange.com/a/400657
  # https://stackoverflow.com/a/28864536/8608146
  # https://stackoverflow.com/a/37753488/8608146
  # https://unix.stackexchange.com/a/57235/312058
  # https://unix.stackexchange.com/questions/258361/convert-rows-to-columns
  # https://unix.stackexchange.com/a/580737
  # https://stackoverflow.com/a/28806991/8608146 (not using for now)
  set ml $(df --output=source,iavail,avail | awk '{print length}' | sort -nr | head -1) 
  paste -d " " (df --output=source,iavail,avail |tr '\n' '\0' | xargs -0 -n1 printf "%-$ml""s\n" |psub) (df --output=iavail,ipcent,avail,pcent,target -h | tr '\n' '\0' | xargs -0 -n1 printf "%-$ml""s\n" |psub) | awk '{printf "%s\t%s(%s)\t%s\t%s(%s)\t%s\t%s\n",$1,$2,$4,$5,$3,$6,$7,$8;}' | column -t -s\t
end
