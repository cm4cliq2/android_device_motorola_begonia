# This script is included in squisher
# It is the final build step (after OTA package)

# Delete unwanted apps
rm -f $REPACK/ota/system/app/RomManager.apk
rm -f $REPACK/ota/system/app/FM.apk
rm -f $REPACK/ota/system/xbin/irssi

mkdir -p $REPACK/ota/system/etc/terminfo/x
mkdir -p $REPACK/ota/system/etc/terminfo/x/xterm
cp $REPACK/ota/system/etc/terminfo/l/linux $REPACK/ota/system/etc/terminfo/x/xterm

# prebuilt boot, devtree, logo & updater-script
#cp -f $ANDROID_BUILD_TOP/vendor/motorola/begonia/boot-222-179-2.smg $REPACK/ota/boot.img
#cp -f $ANDROID_BUILD_TOP/vendor/motorola/begonia/devtree-222-179-2.smg $REPACK/ota/devtree.img
#cp -f $ANDROID_BUILD_TOP/vendor/motorola/begonia/logo-moto.raw $REPACK/ota/logo.img
cp -f $ANDROID_BUILD_TOP/device/motorola/begonia/updater-script $REPACK/ota/META-INF/com/google/android/updater-script
#if [ -n "$CYANOGEN_RELEASE" ]; then
#  cat $ANDROID_BUILD_TOP/device/motorola/begonia/updater-script-rel >> $REPACK/ota/META-INF/com/google/android/updater-script
#fi
