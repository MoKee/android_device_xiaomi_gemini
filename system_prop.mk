# Android XLAT
PRODUCT_PROPERTY_OVERRIDES += \
    persist.net.doxlat=true

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    af.fast_track_multiplier=1 \
    audio_hal.period_size=192 \
    audio.offload.disable=0 \
    audio.offload.buffer.size.kb=32 \
    audio.offload.video=true \
    audio.offload.pcm.16bit.enable=true \
    audio.offload.pcm.24bit.enable=true \
    audio.offload.track.enable=false \
    audio.offload.multiaac.enable=true \
    audio.offload.multiple.enabled=true \
    audio.offload.passthrough=false \
    audio.offload.gapless.enabled=true \
    audio.deep_buffer.media=true \
    audio.safx.pbe.enabled=true \
    audio.parser.ip.buffer.size=0 \
    audio.dolby.ds2.enabled=false \
    audio.dolby.ds2.hardbypass=false \
    tunnel.audio.encode=false \
    use.voice.path.for.pcm.voip=true \
    audio.offload.min.duration.secs=15

PRODUCT_PROPERTY_OVERRIDES += \
    ro.qc.sdk.audio.ssr=false \
    ro.qc.sdk.audio.fluencetype=fluence \
    persist.audio.fluence.voicecall=true \
    persist.audio.fluence.voicerec=false \
    persist.audio.fluence.speaker=true \
    persist.audio.ssr.3mic=false

# Bluetooth
PRODUCT_PROPERTY_OVERRIDES += \
    bt.max.hfpclient.connections=1 \
    ro.bluetooth.ftm_enabled=true \
    ro.btconfig.if=uart \
    ro.btconfig.vendor=qcom \
    ro.btconfig.chip=QCA6164 \
    ro.btconfig.dev=/dev/ttyHS0 \
    qcom.bluetooth.soc=rome

# CABL
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qualcomm.cabl=0

# Camera
PRODUCT_PROPERTY_OVERRIDES += \
    persist.camera.stats.test=5

# CNE and DPM
PRODUCT_PROPERTY_OVERRIDES += \
    persist.cne.feature=1 \
    persist.dpm.feature=5 \
    persist.dpm.nsrm.bkg.evt=3955 \
    persist.env.fastdorm.enabled=false

# DCVS
PRODUCT_PROPERTY_OVERRIDES += \
    vidc.enc.dcvs.extra-buff-count=2

#default pd_enable value
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.pd_enable=0

#Disable rotator split feature
PRODUCT_PROPERTY_OVERRIDES += \
    sdm.debug.disable_rotator_split=1

# Fingerprint
PRODUCT_PROPERTY_OVERRIDES += \
    persist.qfp=false \
    ro.hardware.fingerprint=fpc \
    sys.fpc.navigation.enableflags=0 \
    sys.fpc.tu.disabled=0

# FRP
PRODUCT_PROPERTY_OVERRIDES += \
    ro.frp.pst=/dev/block/bootdevice/by-name/frp

# Graphics
PRODUCT_PROPERTY_OVERRIDES += \
    debug.egl.hw=1 \
    debug.mdpcomp.logs=0 \
    debug.gralloc.enable_fb_ubwc=1 \
    debug.sf.hw=1 \
    dev.pm.dyn_samplingrate=1 \
    persist.hwc.mdpcomp.enable=true \
    ro.opengles.version=196609 \
    ro.sf.lcd_density=480 \
    ro.sys.display.support=63 \
    dev.pm.dyn_samplingrate=1 \
    persist.demo.hdmirotationlock=false

# GPS
PRODUCT_PROPERTY_OVERRIDES += \
    persist.gps.qc_nlp_in_use=1 \
    ro.gps.agps_provider=1

# hwui
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hwui.texture_cache_size=72 \
    ro.hwui.layer_cache_size=48 \
    ro.hwui.r_buffer_cache_size=8 \
    ro.hwui.path_cache_size=32 \
    ro.hwui.gradient_cache_size=1 \
    ro.hwui.drop_shadow_cache_size=6 \
    ro.hwui.texture_cache_flushrate=0.4 \
    ro.hwui.text_small_cache_width=1024 \
    ro.hwui.text_small_cache_height=1024 \
    ro.hwui.text_large_cache_width=2048 \
    ro.hwui.text_large_cache_height=1024

#Increase cached app limit
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sys.fw.bg_apps_limit=60

# Media
#PRODUCT_PROPERTY_OVERRIDES += \
    qcom.hw.aac.encoder=false \
    media.aac_51_output_enabled=true \
    media.stagefright.enable-player=true \
    media.stagefright.enable-http=true \
    media.stagefright.enable-aac=true \
    media.stagefright.enable-qcp=true \
    media.stagefright.enable-fma2dp=true \
    media.stagefright.enable-scan=true \
    mmp.enable.3g2=true \
    media.aac_51_output_enabled=true \
    av.debug.disable.pers.cache=true \
    mm.enable.smoothstreaming=true \
    persist.mm.enable.prefetch=true

# NFC
PRODUCT_PROPERTY_OVERRIDES += \
    ro.nfc.port=I2C \
    persist.nfc.smartcard.config=SIM1,SIM2,eSE1

# NITZ
PRODUCT_PROPERTY_OVERRIDES += \
    persist.rild.nitz_plmn="" \
    persist.rild.nitz_long_ons_0="" \
    persist.rild.nitz_long_ons_1="" \
    persist.rild.nitz_long_ons_2="" \
    persist.rild.nitz_long_ons_3="" \
    persist.rild.nitz_short_ons_0="" \
    persist.rild.nitz_short_ons_1="" \
    persist.rild.nitz_short_ons_2="" \
    persist.rild.nitz_short_ons_3=""

PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=196609

# Perf
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.extension_library=libqti-perfd-client.so

# Qualcomm
PRODUCT_PROPERTY_OVERRIDES += \
    com.qc.hardware=true \
    ro.qc.sdk.sensors.gestures=true

# Qualcomm Assertive Display
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qualcomm.cabl=0 \
    ro.qcom.ad=1 \
    ro.qcom.ad.calib.data=/system/etc/calib.cfg \
    ro.qcom.ad.sensortype=2

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    DEVICE_PROVISIONED=1 \
    rild.libpath=/vendor/lib64/libril-qc-qmi-1.so \
    ril.subscription.types=NV,RUIM \
    ro.baseband.arch=msm \
    ro.telephony.default_network=22,22 \
    ro.telephony.default_cdma_sub=0 \
    ro.telephony.call_ring.multiple=false \
    ro.use_data_netmgrd=true \
    persist.data.netmgrd.qos.enable=true \
    persist.data.mode=concurrent \
    persist.dbg.volte_avail_ovr=1 \
    persist.dbg.vt_avail_ovr=1 \
    persist.fd.scroff.timer=3000 \
    persist.fd.scron.timer=10000 \
    persist.logd.size.radio=4M \
    persist.radio.apm_sim_not_pwdn=1 \
    persist.radio.report_codec=1 \
    persist.radio.multisim.config=dsds \
    persist.radio.sib16_support=1 \
    persist.radio.NO_STAPA=1 \
    persist.radio.rat_on=combine \
    persist.radio.VT_HYBRID_ENABLE=1 \
    sys.ims.DATA_DAEMON_STATUS=1 \
    telephony.lteOnCdmaDevice=1

PRODUCT_PROPERTY_OVERRIDES += \
    persist.rmnet.data.enable=true \
    persist.data.wda.enable=true \
    persist.data.df.dl_mode=5 \
    persist.data.df.ul_mode=5 \
    persist.data.df.agg.dl_pkt=10 \
    persist.data.df.agg.dl_size=4096 \
    persist.data.df.mux_count=8 \
    persist.data.df.iwlan_mux=9 \
    persist.data.df.dev_name=rmnet_usb0

# Set default power mode to low power for encoder
PRODUCT_PROPERTY_OVERRIDES += \
    vidc.debug.perf.mode=2

# Subsystem
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.ssr.restart_level=ALL_ENABLE \
    persist.sys.ssr.enable_ramdumps=0

# System props for time-services
PRODUCT_PROPERTY_OVERRIDES += \
    persist.timed.enable=true

# Vendor specific
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.gt_library=libqti-gt.so \
    ro.vendor.at_library=libqti-at.so \
    sys.games.gt.prof=1

# Wifi
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0

# WiFi display
PRODUCT_PROPERTY_OVERRIDES += \
    persist.debug.wfd.enable=1 \
    persist.hwc.enable_vds=1 \
    persist.sys.wfd.virtual=0 \
    sdm.perf_hint_window=50 \
    ro.vendor.wl_library=libqti-wl.so
