#!/bin/bash
uName=`grep "name =" ~/.gitconfig | awk '{ print $3 }'`
uMail=`grep "mail =" ~/.gitconfig | awk '{ print $3 }'`

if [ -z $uName ]; then
  uName=$USER
  echo "Setting git user to $uName"
  git config --global user.name "$uName" 
fi

if [ -z $uMail ]; then
  uMail=$uName"@here.com"
  echo "Setting git email to $uMail"
  git config --global user.email "$uMail"
fi

