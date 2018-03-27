#!/bin/bash
# Author: wswenyue.
#Date & Time: 2017-11-13 13:38:10
#Description: my config
# jdk path
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_161.jdk/Contents/Home

export ANDROID_HOME=$HOME/Library/Android/sdk
export ANDROID_SDK=$HOME/Library/Android/sdk
export ANDROID_TOOLS=$ANDROID_HOME/tools
export ANDROID_PLATFORMS=$ANDROID_HOME/platforms
export ANDROID_PLATFORM_TOOLS=$ANDROID_HOME/platform-tools
export ANDROID_NDK_HOME=$ANDROID_HOME/ndk-bundle
export ANDROID_NDK=$ANDROID_HOME/ndk-bundle

export MY_CMD=$HOME/cmd

export GRADLE_HOME=$HOME/.gradle/local_libs/gradle-3.4.1

export PATH=$PATH:$ANDROID_HOME:$ANDROID_SDK\
:$ANDROID_TOOLS:$ANDROID_PLATFORMS:$ANDROID_PLATFORM_TOOLS\
:$ANDROID_NDK_HOME:$ANDROID_NDK:$JAVA_HOME/lib/dt.jar\
:$JAVA_HOME/lib/tools.jar:$JAVA_HOME/bin:$MY_CMD:$GRADLE_HOME/bin


#set proxy
# export http_proxy=socks5://127.0.0.1:1080 # 配置http访问的
# export https_proxy=socks5://127.0.0.1:1080 # 配置https
# export all_proxy=socks5://127.0.0.1:1080 # 配置http和https访问
# proxy list
alias proxy='export all_proxy=socks5://127.0.0.1:1086'
alias unproxy='unset all_proxy'

# alias
alias markdown="open -a /Applications/Typora.app"
alias typora="open -a /Applications/Typora.app"
alias sublime="open -a /Applications/Sublime\ Text.app"
# alias apkParser="java -jar ${MY_CMD}/ApkParser.jar"


alias mip='curl cip.cc' #使用cip.cc这个网站来查询本机的公网ip信息
alias ip='getMyIp'
alias ip-phone='getMyPhoneIp'
alias netspeed='speedtest-cli' #测试网速
alias open-hosts='sudo open -a /Applications/Sublime\ Text.app /etc/hosts'

#android adb 
alias adb-cur-window='adb shell "dumpsys window w |grep name="'
#alias adb-top-act='adb shell dumpsys activity | grep "mFocusedActivity"'
alias adb-top-act='adb shell dumpsys activity top | grep ACTIVITY'
alias adb-top-act-detail='adb shell dumpsys activity top'
alias adb-info-cpu='adb shell dumpsys cpuinfo'
alias adb-info-mem='adb shell dumpsys meminfo'
alias adb-info-meminfo='adb shell cat /proc/meminfo'
alias adb-info-phone='adb shell dumpsys telephony.registry'
alias adb-info-notify='adb shell dumpsys notification'
alias adb-info-surface='adb shell dumpsys SurfaceFlinger'
alias adb-info-wifi='adb shell dumpsys wifi'
alias adb-info-power='adb shell dumpsys power'
alias adb-clean='adb shell pm clear'

alias adb-input='adb shell input text'
alias adb-input-tab='adb shell input keyevent 61'
alias adb-screen='phoneScreencap'



#招才猫相关
alias zcm-log='rm -rf ~/Desktop/log && adb pull /sdcard/bangjobcrash/log ~/Desktop && adb shell rm -rf /sdcard/bangjobcrash/log'
alias zcm-trace='rm -rf ~/Desktop/trace && adb pull /storage/emulated/0/58bangjob/log ~/Desktop/trace/'


