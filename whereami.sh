#!/bin/bash
#A simple Curl command to show your location
#Usage whereami "any ip" to lookup your desired ip address
#leave a space blank after whereami to see your own location
echo "The IP address $1 is at:"
curl https://freegeoip.app/xml/$1
