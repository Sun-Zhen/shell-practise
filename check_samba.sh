#!/bin/sh

systemctl status smb

if [[ $? -eq 0 ]];then
	worker_count=$(who | grep work | wc -l)
	if [[ $worker_count -eq 0 ]];then
		systemctl stop smb
	fi
fi
