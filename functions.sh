#!/bin/bash

check_exit_status() {
  if [ $? -ne 0 ]
  then
      echo "an error occurred"
  fi
}

#using this code in datastreams script