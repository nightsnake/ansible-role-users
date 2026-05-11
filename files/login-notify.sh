#!/bin/bash
if [ -n "$SSH_CLIENT" ]; then

  # prepare any message you want
  login_ip="$(echo $SSH_CONNECTION | cut -d " " -f 1)"
  login_date="$(date +"%e %b %Y, %a %R")"
  login_name="$(whoami)"
  srv_hostname="$(hostname -f)"
  srv_ip="$(hostname -I | awk '{print $1}')"

  # For new line I use $'\n' here
  message="Connection from *${login_ip}* as ${login_name} to *${srv_hostname}* (*${srv_ip}*)
  Date: ${login_date}"

  #send it to telegram
  tg-send.sh "$message" &

fi
