#!/bin/bash

# 准备代码
git clone git@gogs.betterhr.cn:sj/coincircle-backend.git ../coincircle-backend

proj=(
    资讯站管理系统IOS端
    资讯站管理系统Android端
    资讯站管理系统H5端
    资讯站管理系统PC端
    )
code_dir=(
    ../newsapp/APP
    ../newsapp/APP
    ../coincircle-backend/suxiangw/
    ../coincircle-backend/suxiangw/
    )
out_dir=project

num=0
for i in "${proj[@]}" ; do
    mkdir -p ${out_dir}/${i}V1.0
    . make_code_doc.sh ${code_dir[${num}]} ${out_dir}/${i}V1.0/${i}V1.0源代码.txt
    let "num=num+1"
done
