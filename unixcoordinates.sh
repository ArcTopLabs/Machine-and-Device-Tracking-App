#!/bin/bash
#please make this make file executable using : chmod u+x .....  , download jq shell using brew or any online tool
echo "Save info about application running"

#addressLineOne="$(curl -H 'access_token : Zs0nTQB-ujOSV0KmEoPhBx2E6-Ab_GKO' -H 'Content-Type : application/json' http://api.masterdatanode.com/demo/greeting/find?LANGUAGE=ENGLISH | jq -r '.greeting' | jq -r '.[].TRANSLATION')"
# * */6 * * * /Volumes/MyMac/development/scheduler/unixprocess.sh
N=2
PROCESS=command
number=$(ps -ax | grep  Applications | wc -l )
echo $number
PROCESS=command
coordinate=$(curl -s http://whatismycountry.com/ | (sed -n 's/.*Coordinates \(.*\)<.*/\1/p'))
#latitude=$(curl -s http://whatismycountry.com/ | (sed -n 's/.*Coordinates \(.*\)<.*/\1/p') | cut -d " " -f 1)
#longitude=$(curl -s http://whatismycountry.com/ | (sed -n 's/.*Coordinates \(.*\)<.*/\1/p') | cut -d " " -f 2)
#arr=($STRING)
#latitude=$($coordinate | cut -d " " -f 1)
#longitude=$($coordinate | cut -d " " -f 2)
#echo $latitude 
#echo $longitude    
#echo $coordinate 

IFS=' ' read -r -a arra <<< "$coordinate"
#arra=$($coordinate)
latitude=${arra[0]}
longitude=${arra[1]}

echo coordinate are as follow latidude $latitude longitude $longitude;
curl -H "access_token: ####Access_Token########" -H "Content-Type: application/json" -H "user-agent : chrome/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko)" --data "{ \"data\" : [{ \"latitude\" : \"$latitude\", \"longitude\" : \"$longitude\", \"machine\" : \"Mac OS\" }]}" -v -k https://api.masterdatanode.com/unix/track/save/

