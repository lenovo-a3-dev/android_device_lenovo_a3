#!/bin/sh

VENDOR=lenovo
DEVICE=a3

BASE=../../../vendor/$VENDOR/$DEVICE/proprietary

echo "Pulling $DEVICE blobs..."
for FILE in `grep -v ^# ../$DEVICE/proprietary-files.txt | grep -v ^$ | sort`; do
DIR=`dirname $FILE`
    if [ ! -d $BASE/$DIR ]; then
mkdir -p $BASE/$DIR
    fi

cp ~/a3-blobs/$FILE $BASE/$FILE
#adb pull /system/$FILE $BASE/$FILE
done

# some extra stuff
cp ~/a3-blobs/lib/libaudio.primary.default.so $BASE/lib/hw/audio.primary.mt6589.so

./setup-makefiles.sh
