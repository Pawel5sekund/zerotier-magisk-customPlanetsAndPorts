# variables

ZTROOT=/data/adb/zerotier_customPort
APPROOT=/data/data/com.eventlowop.zerotier_magisk_app_customPort/app_flutter

ZT_LOG=$ZTROOT/run/zerotier.log
DAEMON_LOG=$ZTROOT/run/daemon.log

PIPE_CLI=$ZTROOT/run/pipe
PIPE_APP=$APPROOT/run/pipe

# LD_LIBRARY_PATH for NDK
export LD_LIBRARY_PATH=/system/lib64:/data/adb/zerotier_customPort/lib

__start() {
  nohup $ZTROOT/zerotier-one -d >> $ZT_LOG 2>&1 &
}
