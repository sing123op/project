#!/bin/bash

# 입력 인수로 이름과 전화번호(또는 생일)를 받습니다.
name=$1
info=$2

# DB 파일 이름
db_file="DB.txt"

# 파일이 존재하지 않으면 생성합니다.
if [ ! -f "$db_file" ]; then
    touch "$db_file"
fi


    

# 입력받은 이름과 정보를 DB.txt 파일에 추가합니다.
echo "$name $info" >> "$db_file"
echo "$name $info 를 DB.txt에 추가했습니다."