#!/bin/bash

# 첫 번째 숫자, 연산자, 두 번째 숫자를 인수로 입력받습니다.
num1=$1
operator=$2
num2=$3

# 연산자에 따라 계산을 수행합니다.
if [ "$operator" == "+" ]; then
    result=$((num1 + num2))
elif [ "$operator" == "-" ]; then
    result=$((num1 - num2))
else
    echo "지원되지 않는 연산자입니다. + 또는 -만 사용 가능합니다."
    exit 1
fi

# 결과를 출력합니다.
echo "$result"
