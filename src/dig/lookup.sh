#!/usr/bin/env bash
IPLIST="iplist.txt"
while read IP; do
  dig -x "$IP" +short | head -1
done < "$IPLIST" >results.csv
