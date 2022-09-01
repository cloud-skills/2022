#!/bin/bash

# Define variables
RANDOM_VAR=$(uuidgen| cut -c 1-8)
BUCKET_NAME=skills-korea-2022-${RANDOM_VAR}

# Create new bucket
aws s3 mb --region ap-northeast-2 s3://${BUCKET_NAME}

# Create files
echo "aaa" > a.txt
echo "bbb" > b.txt
echo "ccc" > c.txt

# Upload files
aws s3 --region ap-northeast-2 cp *.txt s3://${BUCKET_NAME}

# print the created bucket
echo "##########"
echo "Bucket name"
echo $BUCKET_NAME
echo "##########"