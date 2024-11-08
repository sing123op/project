#!/bin/bash

# 검색할 이름을 입력받습니다.
search_name=$1

# DB 파일 이름
db_file="DB.txt"

# DB.txt 파일에서 검색
if [ -f "$db_file" ]; then
    # grep을 사용하여 검색 결과를 확인
    result=$(grep -i "$search_name" "$db_file")
    
    # 검색 결과가 있으면 출력, 없으면 안내 메시지
    if [ -n "$result" ]; then
        echo "$result"
    else
        echo "검색 결과가 없습니다."
    fi
else
    echo "DB.txt 파일이 존재하지 않습니다."
fi