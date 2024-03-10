#!/bin/bash

# Set required environment variables
#export AZP_URL="https://dev.azure.com/Vishwa1700220413334"
#export AZP_TOKEN="f4ioen44sdsggxdac75sf6dc4swpyzdjtyuhz35kbys6np2ne27a"
#export AZP_AGENT_NAME="Agent-3"
#export AZP_POOL="UAT"

# Download and configure the Azure Pipelines agent

# ./config.sh --unattended --url $AZP_URL --token $AZP_TOKEN --agent $AZP_AGENT_NAME --pool $AZP_POOL
./config.sh --unattended --url $1 --token $2 --agent $3 --pool $4
sleep 60
./run.sh &

