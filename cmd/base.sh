#!/bin/bash
# Author: wswenyue.
#Date & Time: 2018-03-21 14:47:50
#Description: base lib
# var and path
AK_HOME=ext_ak_home
AK_LIBS=$AK_HOME/libs
export AK_LIBS
export AK_HOME

# common method

has(){
    type "$1" > /dev/null 2>&1
}

check_has(){
	! has $1  && echo "$1 command not found" && exit -1
}

check_exe_error(){
	if [[ $? -ne 0 ]]; then
		echo "Execute Error:" $0# :$1 
		exit -1;
	fi
}

check_empty(){
	# -n 长度不能为0; ! -z 不为empty 
	if [[ -n $1 ]]; then
			return 1 
		else
			return 0 #true 字符串为空
	fi
}
check_not_empty(){
	! check_empty $1
}
# contains abc a  
# 校验 "abc" 中是否有 "a" 
contains(){
	if check_empty "$1"; then
		return 1
	fi
	if check_empty "$2"; then
		return 1
	fi

	if [[ $1 = *$2* ]]; then
		return 0
	else
		return 1
	fi
}

# echo "begin"
# if  contains hello ; then
# 	echo "->contains"
# else
# 	echo "->not contains"
# fi
# echo "end"
# ! has "javaa" && echo "has java"