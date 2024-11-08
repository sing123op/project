#!/bin/bash

# 첫 번째 인수: 체중(kg), 두 번째 인수: 신장(cm)
weight=$1
height=$2

# 신장을 미터 단위로 변환
height_in_m=$(echo "scale=2; $height / 100" | bc)

# BMI 계산
bmi=$(echo "scale=2; $weight / ($height_in_m * $height_in_m)" | bc)

# BMI에 따라 판별
if (( $(echo "$bmi < 18.5" | bc -l) )); then
    echo "저체중입니다."
elif (( $(echo "$bmi >= 18.5" | bc -l) && $(echo "$bmi < 23" | bc -l) )); then
    echo "정상 체중입니다."
else
    echo "과체중입니다."
fi
