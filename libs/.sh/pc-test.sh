#!/bin/bash

shName=`basename $0 .sh`
configDir=.config
configName="${shName}.rb"

if [ x$1 != x ] && [ $1 == '-dev' ]
then
  echo "开发模式，带有sourcemap"
  compass watch -c $configDir/$configName -e development --force
else
  echo "生产模式，全压缩"
  compass compile -c $configDir/$configName -e production --force
fi
