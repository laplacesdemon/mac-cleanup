#!/bin/bash
echo "Starting to clean up"
cd ~/Library/Application\ Support/iPhone\ Simulator/
for i in $(ls)
do
  rm -fr $i/Applications/*
done

rm -fr ~/Library/Developer/Xcode/DerivedData/*

echo "Cleaning torrentv uploads"
rm -fr /tmp/torrent-stream
echo "Cleanup is completed"
