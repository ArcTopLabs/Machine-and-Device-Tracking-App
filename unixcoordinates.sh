#!/bin/bash
#please make this make file executable using : chmod u+x .....  , download jq shell using brew or any online tool
echo "Save info about current location using freegeoip.net"

#Freegeoip return
#{ "ip": "122.177.114.65", "country_code": "IN", "country_name": "India", "region_code": "UP", "region_name": "Uttar Pradesh", "city": "Noida", "zip_code": "201301", "time_zone": "Asia/Kolkata", "latitude": 28.57, "longitude": 77.32, "metro_code": 0 }
# use jq to add Machine name in returned json

coordinate=$(curl -s --get http://freegeoip.net/json/ | jq '. |= . + {"Machine" : "Machine1"}')
echo $coordinate 


echo coordinate are as follow latidude $latitude longitude $longitude;
curl -H "access_token:####ACCESSTOKEN######" -H "Content-Type: application/json" -H "user-agent : chrome/5.0 (iPad; U; CPU OS 3_2_1 like Mac OS X; en-us) AppleWebKit/531.21.10 (KHTML, like Gecko)" --data "{ \"data\" : [$coordinate ]}" https://api.masterdatanode.com/##APPNAME##/track/save/

