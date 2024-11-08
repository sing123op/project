#!/bin/bash

# 사용자에게 입력을 요청합니다.
echo "리눅스가 재미있나요? (yes / no)"
read answer

# 입력에 따라 분기 처리
case "$answer" in
    "yes" | "y" | "Y")
        echo "yes!"
        ;;
    "no" | "nonono" | "N")
        echo "no"
        ;;
    *)
        echo "yes 또는 no로 입력해 주세요."
        ;;
esac
