#!/bin/bash

cat bin/images.txt | while read line
do
 echo $line
 echo ${line##*/}
 docker pull swr.cn-north-4.myhuaweicloud.com/hw83984027_42e56f7d/${line##*/}
 docker tag swr.cn-north-4.myhuaweicloud.com/hw83984027_42e56f7d/${line##*/} $line 
done;


