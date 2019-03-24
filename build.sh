SRC_PWD=`pwd`
mkdir -p ../build-SPFlashToolAPCore-Desktop-Debug
cd ../build-SPFlashToolAPCore-Desktop-Debug
qmake $SRC_PWD/SPFlashToolAPCore.pro -r -spec linux-g++-64 CONFIG+=debug
make
make INSTALL_ROOT=appdir install
find appdir/
unset QTDIR; unset QT_PLUGIN_PATH ; unset LD_LIBRARY_PATH
export VERSION=5.1728
LD_LIBRARY_PATH=$SRC_PWD/Lib /opt/linuxdeployqt --appimage-extract-and-run appdir/usr/local/share/applications/*.desktop -appimage -always-overwrite -no-strip
