#! /bin/bash
#
# this script automatically updates the sources for the PGMidi ios library
#
# to upgrade to a new version, change the version number below
#
# as long as the download link is formatted in the same way and folder
# structure are the same, this script should *just work*
#
# Dan Wilcox <danomatika@gmail.com> 2013
#

WD=$(dirname $0)
destDir=../libs/pgmidi

###

# move to this scripts dir
cd $WD

# get latest source
git clone git://github.com/petegoodliffe/PGMidi.git

# create destination dir
mkdir -pv $destDir

# copy readme/license
cp -v PGMidi/README.md $destDir

# copy sources
cp -v PGMidi/Sources/PGMidi/* $destDir

# cleanup
rm -rf PGMidi

