#!/bin/bash
# Request GPU resource
#$ -l gpu=1
# Use the training project group
#$ -P training
#Use the training queue
#$ -q training.q 

# Call the hello world executable
./helloworld