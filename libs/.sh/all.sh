#!/bin/bash

echo "生产模式，批量处理当前所有子项目"

configDir=.config

for FILE in $configDir/*.rb
do
  compass compile -c $FILE -e production --force
done
