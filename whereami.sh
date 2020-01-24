#!/bin/bash
echo "The IP address $1 is at:"
curl https://freegeoip.app/xml/$1
