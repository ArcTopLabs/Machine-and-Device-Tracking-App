#!/bin/bash
#please make this make file executable using : chmod u+x .....  , download jq shell using brew or any online tool
echo "Save info about current location using freegeoip.net"

<<<<<<< HEAD
#Freegeoip return
#{ "ip": "122.177.114.65", "country_code": "IN", "country_name": "India", "region_code": "UP", "region_name": "Uttar Pradesh", "city": "Noida", "zip_code": "201301", "time_zone": "Asia/Kolkata", "latitude": 28.57, "longitude": 77.32, "metro_code": 0 }
# use jq to add Machine name in returned json

coordinate=$(curl -s --get http://freegeoip.net/json/ | jq '. |= . + {"Machine" : "Machine1"}')
echo $coordinate 
=======
#Schedule Cron Job
# * */6 * * * /....../scheduler/unixprocess.sh
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
>>>>>>> origin/master


echo coordinate are as follow latidude $latitude longitude $longitude;
<<<<<<< HEAD
curl -H "access_token:####ACCESSTOKEN######" -H "Content-Type: application/json" -H "user-agent : chrome/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko)" --data "{ \"data\" : [$coordinate ]}" https://api.masterdatanode.com/##APPNAME##/track/save/
=======
curl -H "access_token: ####Access_Token########" -H "Content-Type: application/json" -H "user-agent : chrome/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko)" --data "{ \"data\" : [{ \"latitude\" : \"$latitude\", \"longitude\" : \"$longitude\", \"machine\" : \"Mac OS\" }]}" -v -k https://api.masterdatanode.com/###AppName####/track/save/
>>>>>>> origin/master

