mkdir -p debug
cd debug
qmake CONFIG+=release PREFIX=/usr ../SPFlashToolAPCore.pro
make
make INSTALL_ROOT=appdir install
find appdir/
unset QTDIR; unset QT_PLUGIN_PATH ; unset LD_LIBRARY_PATH
export VERSION=5.1728
LD_LIBRARY_PATH=`pwd`/../Lib /opt/linuxdeployqt --appimage-extract-and-run appdir/usr/share/applications/*.desktop -appimage
cd ..
