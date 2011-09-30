# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Prebuilt libraries that are needed to build open-source libraries
# media config xml file

# keyboard
PRODUCT_COPY_FILES += \
	device/motorola/begonia/qwerty.kl:system/usr/keylayout/qwerty.kl \
	device/motorola/begonia/keychars/umts_begonia-keypad.kcm.bin:system/usr/keychars/umts_begonia-keypad.kcm.bin \
	device/motorola/begonia/keychars/sholes-keypad.kcm.bin:system/usr/keychars/sholes-keypad.kcm.bin \
	device/motorola/begonia/keychars/qtouch-touchscreen.kcm.bin:system/usr/keychars/qtouch-touchscreen.kcm.bin \
	device/motorola/begonia/keylayout/cpcap-key.kl:system/usr/keylayout/cpcap-key.kl \
	device/motorola/begonia/keylayout/umts_begonia-keypad.kl:system/usr/keylayout/umts_begonia-keypad.kl \
	device/motorola/begonia/keylayout/sholes-keypad.kl:system/usr/keylayout/sholes-keypad.kl

#etc
PRODUCT_COPY_FILES += \
	device/motorola/begonia/recovery.fstab:system/etc/recovery.fstab \
	device/motorola/begonia/prebuilt/etc/init.d/01sysctl:system/etc/init.d/01sysctl \
	device/motorola/begonia/prebuilt/etc/init.d/05mountsd:system/etc/init.d/05mountsd \
	device/motorola/begonia/prebuilt/etc/init.d/90multitouch:system/etc/init.d/90multitouch \
	device/motorola/begonia/prebuilt/etc/profile:system/etc/profile \
	device/motorola/begonia/prebuilt/etc/sysctl.conf:system/etc/sysctl.conf \
	device/motorola/begonia/prebuilt/etc/busybox.fstab:system/etc/fstab \
	device/motorola/begonia/prebuilt/lib/modules/modules.alias:system/lib/modules/modules.alias \
	device/motorola/begonia/prebuilt/lib/modules/modules.dep:system/lib/modules/modules.dep

#prebuilt binaries (for buggy versions)
PRODUCT_COPY_FILES += \
	device/motorola/begonia/prebuilt/bin/iptables:system/bin/iptables \
	device/motorola/begonia/prebuilt/bin/fixDelSystem.sh:system/bin/fixDelSystem.sh \
	device/motorola/begonia/prebuilt/bin/install2ndInit.sh:system/bin/install2ndInit.sh	

ifdef CYANOGEN_RELEASE
	PRODUCT_COPY_FILES += device/motorola/begonia/custom_backup_release.txt:system/etc/custom_backup_list.txt
else
	PRODUCT_COPY_FILES += device/motorola/begonia/custom_backup_list.txt:system/etc/custom_backup_list.txt
endif

#app
#PRODUCT_COPY_FILES += \
#	device/motorola/begonia/prebuilt/app/basebandswitcherV4.0.apk:system/app/basebandswitcherV4.0.apk

#Bootmenu
PRODUCT_COPY_FILES += \
	device/motorola/begonia/profiles/cm7_release_files/init.rc:system/bootmenu/2nd-init/init.rc \
	device/motorola/begonia/profiles/cm7_release_files/init.mapphone_umts.rc:system/bootmenu/2nd-init/init.mapphone_umts.rc \
	device/motorola/begonia/profiles/cm7_release_files/ueventd.rc:system/bootmenu/2nd-init/ueventd.rc \
	device/motorola/begonia/profiles/cm7_release_files/init:system/bootmenu/2nd-init/init \
	device/motorola/begonia/profiles/cm7_release_files/sbin/ueventd:system/bootmenu/2nd-init/sbin/ueventd \
	device/motorola/begonia/bootmenu/binary/adbd:system/bootmenu/binary/adbd \
	device/motorola/begonia/bootmenu/binary/logwrapper.bin:system/bootmenu/binary/logwrapper.bin \
	device/motorola/begonia/bootmenu/binary/logwrapper.bin:system/bin/logwrapper.bin \
	device/motorola/begonia/bootmenu/binary/lsof.static:system/bootmenu/binary/lsof \
	device/motorola/begonia/bootmenu/binary/2nd-init.common:system/bootmenu/binary/2nd-init \
	device/motorola/begonia/bootmenu/config/bootmenu_bypass:system/bootmenu/config/bootmenu_bypass \
	device/motorola/begonia/bootmenu/config/default.prop:system/bootmenu/config/default.prop \
	device/motorola/begonia/bootmenu/config/default_bootmode.conf:system/bootmenu/config/default_bootmode.conf \
	device/motorola/begonia/bootmenu/config/overclock.conf:system/bootmenu/config/overclock.conf \
	device/motorola/begonia/bootmenu/ext/su:system/bootmenu/ext/su \
	device/motorola/begonia/bootmenu/images/background.png:system/bootmenu/images/background.png \
	external/bootmenu/images/indeterminate1.png:system/bootmenu/images/indeterminate1.png \
	external/bootmenu/images/indeterminate2.png:system/bootmenu/images/indeterminate2.png \
	external/bootmenu/images/indeterminate3.png:system/bootmenu/images/indeterminate3.png \
	external/bootmenu/images/indeterminate4.png:system/bootmenu/images/indeterminate4.png \
	external/bootmenu/images/indeterminate5.png:system/bootmenu/images/indeterminate5.png \
	external/bootmenu/images/indeterminate6.png:system/bootmenu/images/indeterminate6.png \
	external/bootmenu/images/progress_empty.png:system/bootmenu/images/progress_empty.png \
	external/bootmenu/images/progress_fill.png:system/bootmenu/images/progress_fill.png \
	device/motorola/begonia/bootmenu/recovery/res/keys:system/bootmenu/recovery/res/keys \
	device/motorola/begonia/bootmenu/recovery/res/images/icon_error.png:system/bootmenu/recovery/res/images/icon_error.png \
	device/motorola/begonia/bootmenu/recovery/res/images/icon_done.png:system/bootmenu/recovery/res/images/icon_done.png \
	device/motorola/begonia/bootmenu/recovery/res/images/icon_installing.png:system/bootmenu/recovery/res/images/icon_installing.png \
	device/motorola/begonia/bootmenu/recovery/res/images/indeterminate1.png:system/bootmenu/recovery/res/images/indeterminate1.png \
	device/motorola/begonia/bootmenu/recovery/res/images/indeterminate2.png:system/bootmenu/recovery/res/images/indeterminate2.png \
	device/motorola/begonia/bootmenu/recovery/res/images/indeterminate3.png:system/bootmenu/recovery/res/images/indeterminate3.png \
	device/motorola/begonia/bootmenu/recovery/res/images/indeterminate4.png:system/bootmenu/recovery/res/images/indeterminate4.png \
	device/motorola/begonia/bootmenu/recovery/res/images/indeterminate5.png:system/bootmenu/recovery/res/images/indeterminate5.png \
	device/motorola/begonia/bootmenu/recovery/res/images/indeterminate6.png:system/bootmenu/recovery/res/images/indeterminate6.png \
	device/motorola/begonia/bootmenu/recovery/res/images/progress_empty.png:system/bootmenu/recovery/res/images/progress_empty.png \
	device/motorola/begonia/bootmenu/recovery/res/images/progress_fill.png:system/bootmenu/recovery/res/images/progress_fill.png \
	device/motorola/begonia/bootmenu/recovery/res/images/icon_clockwork.png:system/bootmenu/recovery/res/images/icon_clockwork.png \
        device/motorola/begonia/bootmenu/recovery/sbin/adbd:system/bootmenu/recovery/sbin/adbd \
        device/motorola/begonia/bootmenu/recovery/sbin/badblocks:system/bootmenu/recovery/sbin/badblocks \
	device/motorola/begonia/bootmenu/recovery/sbin/dedupe:system/bootmenu/recovery/sbin/dedupe \
	device/motorola/begonia/bootmenu/recovery/sbin/dump_image:system/bootmenu/recovery/sbin/dump_image \
	device/motorola/begonia/bootmenu/recovery/sbin/e2fsck:system/bootmenu/recovery/sbin/e2fsck \
	device/motorola/begonia/bootmenu/recovery/sbin/fix_permissions:system/bootmenu/recovery/sbin/fix_permissions \
	device/motorola/begonia/bootmenu/recovery/sbin/killrecovery.sh:system/bootmenu/recovery/sbin/killrecovery.sh \
	device/motorola/begonia/bootmenu/recovery/sbin/nandroid-md5.sh:system/bootmenu/recovery/sbin/nandroid-md5.sh \
	device/motorola/begonia/bootmenu/recovery/sbin/parted:system/bootmenu/recovery/sbin/parted \
	device/motorola/begonia/bootmenu/recovery/sbin/postrecoveryboot.sh:system/bootmenu/recovery/sbin/postrecoveryboot.sh \
	device/motorola/begonia/bootmenu/recovery/sbin/recovery_stable:system/bootmenu/recovery/sbin/recovery_stable \
	device/motorola/begonia/bootmenu/recovery/sbin/resize2fs:system/bootmenu/recovery/sbin/resize2fs \
	device/motorola/begonia/bootmenu/recovery/sbin/sdparted:system/bootmenu/recovery/sbin/sdparted \
	device/motorola/begonia/bootmenu/recovery/sbin/mke2fs:system/bootmenu/recovery/sbin/mke2fs \
	device/motorola/begonia/bootmenu/recovery/sbin/mke2fs.bin:system/bootmenu/recovery/sbin/mke2fs.bin \
	device/motorola/begonia/bootmenu/recovery/sbin/tune2fs.bin:system/bootmenu/recovery/sbin/tune2fs \
	device/motorola/begonia/bootmenu/recovery/recovery.fstab:system/bootmenu/recovery/recovery.fstab \
	device/motorola/begonia/bootmenu/script/2nd-init.sh:system/bootmenu/script/2nd-init.sh \
	device/motorola/begonia/bootmenu/script/2nd-boot.sh:system/bootmenu/script/2nd-boot.sh \
	device/motorola/begonia/bootmenu/script/adbd.sh:system/bootmenu/script/adbd.sh \
	device/motorola/begonia/bootmenu/script/bootmode_clean.sh:system/bootmenu/script/bootmode_clean.sh \
	device/motorola/begonia/bootmenu/script/overclock.sh:system/bootmenu/script/overclock.sh \
	device/motorola/begonia/bootmenu/script/post_bootmenu.sh:system/bootmenu/script/post_bootmenu.sh \
	device/motorola/begonia/bootmenu/script/pre_bootmenu.sh:system/bootmenu/script/pre_bootmenu.sh \
	device/motorola/begonia/bootmenu/script/reboot_command.sh:system/bootmenu/script/reboot_command.sh \
	device/motorola/begonia/bootmenu/script/recovery.sh:system/bootmenu/script/recovery.sh \
	device/motorola/begonia/bootmenu/script/recovery_stable.sh:system/bootmenu/script/recovery_stable.sh \
	device/motorola/begonia/bootmenu/script/recoveryexit.sh:system/bootmenu/script/recoveryexit.sh \
	device/motorola/begonia/bootmenu/ext/modules/cpufreq_conservative.ko:system/bootmenu/ext/modules/cpufreq_conservative.ko \
	device/motorola/begonia/bootmenu/ext/modules/cpufreq_interactive.ko:system/bootmenu/ext/modules/cpufreq_interactive.ko \
	device/motorola/begonia/bootmenu/ext/modules/cpufreq_ondemand.ko:system/bootmenu/ext/modules/cpufreq_ondemand.ko \
	device/motorola/begonia/bootmenu/ext/modules/cpufreq_performance.ko:system/bootmenu/ext/modules/cpufreq_performance.ko \
	device/motorola/begonia/bootmenu/ext/modules/cpufreq_powersave.ko:system/bootmenu/ext/modules/cpufreq_powersave.ko \
	device/motorola/begonia/bootmenu/ext/modules/cpufreq_smartass.ko:system/bootmenu/ext/modules/cpufreq_smartass.ko \
	device/motorola/begonia/bootmenu/ext/modules/cpufreq_userspace.ko:system/bootmenu/ext/modules/cpufreq_userspace.ko \
	device/motorola/begonia/bootmenu/ext/modules/overclock_defy.ko:system/bootmenu/ext/modules/overclock_defy.ko \
	device/motorola/begonia/bootmenu/ext/modules/symsearch.ko:system/bootmenu/ext/modules/symsearch.ko

