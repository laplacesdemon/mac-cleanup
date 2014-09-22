#!/bin/bash
echo "Starting to clean up"
cd ~/Library/Application\ Support/iPhone\ Simulator/
for i in $(ls)
do
  rm -fr $i/Applications/*
done

rm -fr ~/Library/Developer/Xcode/DerivedData/*
rm -fr ~/Library/Developer/Xcode/Archives/*

echo "Cleaning torrentv uploads"
rm -fr /tmp/torrent-stream

echo "Cleaning mobile back-ups"
rm -fr /Users/solomon/Library/Application\ Support/MobileSync/Backup

echo "Cleaning brew"
brew cleanup

echo "Cleanup is completed"

