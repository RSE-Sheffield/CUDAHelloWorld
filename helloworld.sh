#!/bin/bash
# Request GPU resource
#$ -l gpu=1
# Use the training project group
#$ -P rse-training
#Use the training queue
#$ -q rse-training.q 

# Call the hello world executable
./helloworld
