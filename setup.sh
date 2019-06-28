#!/bin/bash

echo "Ubuntu Container started"
chmod 777 /src/rawData/start.sh
/src/rawData/start.sh
tail -f /dev/null