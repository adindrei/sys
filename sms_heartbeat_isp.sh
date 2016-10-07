#!/bin/bash

 ISP=($(traceroute -n -w 3 -q 1 -m 5 8.8.8.8))
 for i in ${ISP[@]}; do
 if [ $i == '95.77.113.225' ]; then
		
		#ISP_IP=$(echo ${ISP[1]} |grep 95.77.113.225)
		curl -s -X POST --data "message='SMS heartbeat test. Current ISP is UPC: $i '&numbers=%2B40744470097,%2B40744786039,%2B40758997241,%2B40745405903,%2B40744675400,%2B40745019050,%2B40758066019,%2B40747997721,%2B40740149947,%2B40743053164,%2B40742503318,%2B40723649800" sms.cloudtroopers.ro
 
	else if [ $i == '89.121.216.237' ]; then 

		#ISP_IP=$(echo${ISP[1]} |grep 89.121.216.237) 
		curl -s -X POST --data "message='SMS heartbeat test. Current ISP is RTL: $i '&numbers=%2B40744470097,%2B40744786039,%2B40758997241,%2B40745405903,%2B40744675400,%2B40745019050,%2B40758066019,%2B40747997721,%2B40740149947,%2B40743053164,%2B40742503318,%2B40723649800" sms.cloudtroopers.ro

	else if [ $i == 82.79.150.141 ]; then

		#ISP_IP=$(echo${ISP[1]} |grep 82.79.150.141)
		curl -s -X POST --data "message='SMS heartbeat test. Current ISP is RDS: $i '&numbers=%2B40744470097,%2B40744786039,%2B40758997241,%2B40745405903,%2B40744675400,%2B40745019050,%2B40758066019,%2B40747997721,%2B40740149947,%2B40743053164,%2B40742503318,%2B40723649800" sms.cloudtroopers.ro
  fi
 fi
fi
done
















