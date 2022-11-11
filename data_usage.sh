#!/bin/bash

vnstat -i wwan0 --json m | jq . > /tmp/modem