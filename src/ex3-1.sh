#!/bin/bash

# 입력받은 숫자를 변수에 저장
count=$1

# 숫자가 입력된 경우
if [ -n "$count" ]; then
    for ((i=0; i<count; i++))
    do
        echo "hello world"
    done
# 숫자가 입력되지 않은 경우 (무한 반복)
else
    while true
    do
        echo "hello world"
    done
fi
