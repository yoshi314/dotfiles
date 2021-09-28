#!/bin/sh

curl https://api.sunrise-sunset.org/json\?lat\=51.2464536\&lng\=22.5684463\&formatted\=1 | python -m json.tool | egrep '(sunrise|sunset|day_length)' | xargs
