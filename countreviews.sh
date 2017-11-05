#!/bin/bash
cd $1


	grep -c "<Author>" * | sort -t : -k2nr | sed 's/\.dat:/ /' 


