#!/bin/bash

set -xe

if [[ -z "${TMPDIR}" ]]; then
  TMPDIR=/tmp
fi

set -u

rm -rf $TMPDIR/downloads

mkdir -p $TMPDIR/downloads $OPT/bin $OPT/etc $OPT/lib $OPT/share $OPT/site /tmp/hts_cache

cd $TMPDIR/downloads

# alleleCount
curl -sSL -o distro.zip --retry 10 https://github.com/cancerit/alleleCount/archive/v3.2.2.zip
mkdir $TMPDIR/downloads/distro
bsdtar -C $TMPDIR/downloads/distro --strip-components 1 -xf distro.zip
cd $TMPDIR/downloads/distro
./setup.sh $OPT
cd $TMPDIR/downloads
rm -rf distro.zip $TMPDIR/downloads/distro /tmp/hts_cache

# cgpNgsQC
curl -sSL -o distro.zip --retry 10 https://github.com/cancerit/cgpNgsQc/archive/v1.4.0.zip
mkdir $TMPDIR/downloads/distro
bsdtar -C $TMPDIR/downloads/distro --strip-components 1 -xf distro.zip
cd $TMPDIR/downloads/distro
./setup.sh $OPT
cd $TMPDIR/downloads
rm -rf distro.zip $TMPDIR/downloads/distro /tmp/hts_cache

rm -rf $TMPDIR/downloads
