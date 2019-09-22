#!/bin/bash
#1 ��ȡ����������������û�в�����ֱ���˳�
pcount=$#
if((pcount==0)); then
echo no args;
exit;
fi

#2 ��ȡ�ļ�����
p1=$1
fname=`basename $p1`
echo fname=$fname

#3 ��ȡ�ϼ�Ŀ¼������·��
pdir=`cd -P $(dirname $p1); pwd`
echo pdir=$pdir

#4 ��ȡ��ǰ�û�����
user=`whoami`

#5 ѭ��
for((host=1; host<6; host++)); do
        echo ------------------- cdh$host --------------
        rsync -rvl $pdir/$fname $user@cdh$host:$pdir
done