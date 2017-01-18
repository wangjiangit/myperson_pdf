#!/usr/bin/env bash

echo -e 'test for shell\n' >> log1.log1

expr 3 \< 5

var1=4;
var2=2;
echo $[$var1 + $var2];

var1=`echo "scale=4; 6 / 5 "| bc` ;

echo $var1;


echo `bc <<EOF
  scale=3
  a1=3+4
  b1=1+1
  a1+b1
EOF
`;

if date
then
    echo 'adsf';
fi

testuser=wangjian1
if grep $testuser /etc/passwd ;then
    echo "The bash files for ${testuser} are :";
    ls -l /home/$testuser/.b*
elif expr index $testuser 'wangjian1' ;then
    echo 'dengyu';
else

    echo "you not $testuser in the system";
fi

if test 4 -gt 5; then
echo 'asdf';

fi

arr=(1 2 4 6);
for cur  in ${arr[*]}
do
   echo $cur ;
done |sort  -rn > ./log1.log1


