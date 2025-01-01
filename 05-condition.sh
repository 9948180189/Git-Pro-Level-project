#!/bin/bash

NUMBER=$1

if [ $NUMBER -gt 20 ]
then
   echo "Given number: $NUMBER is greter then 20"
else
   echo "Given number: $NUMBER is less then 20"
fi
