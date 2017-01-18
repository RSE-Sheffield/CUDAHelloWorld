#!/bin/bash
# Request GPU resource
#$ -l gpu=1
# Use the flybrain project group
#$ -P flybrain
#Use the flybrain queue
#$ -q flybrain.q 

# Call the hello world executable
./helloworld