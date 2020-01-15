#!/usr/bin/env bash
PATH=${HOME}/bin:/usr/local/bin:${PATH}

##
# Determine if the network is up by looking for any non-loopback
# internet network interfaces.
##
CheckForNetwork()
{
	local test

	if [ -z "${NETWORKUP:=}" ]; then
		test=$(ifconfig -a inet 2>/dev/null | sed -n -e '/127.0.0.1/d' -e '/0.0.0.0/d' -e '/inet/p' | wc -l)
		if [ "${test}" -gt 0 ]; then
			NETWORKUP="-YES-"
		else
			NETWORKUP="-NO-"
		fi
	fi
}

PerformDailyUpdates()
{
	CheckForNetwork

	while [ "${NETWORKUP}" != "-YES-" ]
	do
		sleep 1m
		NETWORKUP=
		CheckForNetwork
	done
	
	DATE=$(date +%d-%m-%Y" "%H:%M:%S )

	echo ""
	echo "| 🕥 $DATE | Performing daily updates."

	update
	
	echo "||||| Finished running daily script ☑️ |||||"
}

PerformDailyUpdates
echo 'Finished daily update tasks' | terminal-notifier -title 'Updated' -subtitle 'Daily'