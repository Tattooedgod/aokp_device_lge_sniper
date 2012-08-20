#!/bin/sh

MODEL_SPECIFIC_FILES="
	system/build.prop
	system/framework/framework-res.apk
	system/app/Mms.apk
	system/usr/keylayout/hub_synaptics_touch.kl"

PRODUCT_REMOVE_FILES=""

# DRM blobs (vendor/aokp commit e709b1c5af95fd4d87837bed23b8a1e8594dbc6b)
# Note property drm.service.enabled should not be set but seems harmless
PRODUCT_REMOVE_FILES="$PRODUCT_REMOVE_FILES
	system/etc/permissions/com.google.widevine.software.drm.xml
	system/framework/com.google.widevine.software.drm.jar
	system/lib/libfrsdk.so
	system/lib/libWVphoneAPI.so
	system/vendor/lib/libwvdrm_L1.so
	system/vendor/lib/libwvm.so
	system/vendor/lib/libWVStreamControlAPI_L1.so
	system/vendor/lib/drm/libdrmwvmplugin.so"

PRODUCT_REMOVE_RES="{layout,drawable,mipmap,menu,xml}-{large,sw580,sw600,sw768,xhdpi,xlarge}*"

# Keep only en, fr, it, de, es
PACKAGE_REMOVE_FILES="
	LatinIME.apk:res/{raw,xml}-{ar,bg,cs,cs-ZZ,da,el,fa,fi,hr,hr-AL,hu,hu-ZZ,iw,ka,nb,nl,nl-BE,pl,pt,ru,sr,sv,tr}"
