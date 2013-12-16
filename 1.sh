#!/bin/bash
while (true) do
clear
user=`whoami`
host=`hostname`
time1=`date +"%d\\%m\\%Y"`
cat <<MENU
_______________________________________________________________________________
USER:$user	HOST:$host	DATE:$time1
_______________________________________________________________________________
			A: 创建子目录并复制文件 
			B: 文件权限测试 
			C: 文件字符转换
			D: 文件总数统计 
			E: 文本文件行数统计 
			Q: 退出系统
_______________________________________________________________________________
MENU
read char
case "$char" in
	A|a)
	echo 'file1' > file1
    echo 'file2' > file2
    mkdir "$user"
    chmod 700 "$user"
    if [ -d "$USER" ] 
     then 
        echo "Now copy file1 file2 to $user/"
        mv file1 $user/
        mv file2 $user/
        if [ -e  $user/file1 -a -e $user/file2 ]
        then
           echo "Successful!"
        fi
     echo
     cat $USER/file1
     cat $USER/file2
     fi
		read $stop
		;;
	B|b)
	echo 'Please type a location of file :'
    read URL
    ls -l $URL
	read $stop
		;;
	C|c)
		echo "file1:"
         tr '[a-z]' '[A-Z]' < $user/file1
      	echo "file2:"
         tr '[a-z]' '[A-Z]' < $user/file2
		read $stop
		;;
	D|d)
		linenum=`ls -Al|grep ^d|wc -l`
		echo "目录共有$linenum 个"
		linenum=`ls -Al|grep ^l|wc -l`
		echo "符号链接文件共有$linenum 个"		
		read $stop
		;;
	E|e)
		linenum=`cat pc.txt|wc -l`
		echo "pc.txt的行数为$linenum"
		read $stop
		;;
	Q|q)
		clear
		break
		;;
	*) echo "输入错误！"
		;;
esac
done;
