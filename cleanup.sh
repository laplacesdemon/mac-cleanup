cd ~/Library/Application\ Support/iPhone\ Simulator/
for i in $(ls)
do
  rm -fr $i/Applications/*
done
rm -fr ~/Library/Developer/Xcode/DerivedDate/*
