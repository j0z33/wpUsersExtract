#!/bin/bash
declare -r main_url=$1
if [ ! $1 ];then
	echo -e "\nModo de empleo:\n"
	echo -e "\n.\wpUsersExtract.sh <http://www.midominio.com>\n"
	exit 1
fi
curl -s "$main_url/wp-json/wp/v2/users/" | json_pp | grep "slug" | awk '{print $2}' FS=":" | awk '{print $2}' FS='"'
