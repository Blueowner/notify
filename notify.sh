#!/bin/bash

while [[ $# > 1 ]]

do
  key="$1"
  
  case $key in
       -t|--title)
       TITLE="$2"
       shift
       ;;
       -s|--subtitle)
       SUBTITLE="$2"
       shift
       ;;
       -b|--body)
       BODY="$2"
       shift
       ;;
       *)
       # unknown option
       ;;
  esac
  shift
done

osascript -e "display notification \"$BODY\" with title \"$TITLE\" subtitle \"$SUBTITLE\""
