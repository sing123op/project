#!/bin/bash

# 프로그램 시작 메시지
echo "프로그램을 시작합니다."

# 내부 함수 정의
function list_files() {
    echo "함수 안으로 들어왔음"
    ls "$@"  # 입력된 인자를 ls 명령어의 옵션으로 전달
}

# 함수 호출
list_files "$@"

# 프로그램 종료 메시지
echo "프로그램을 종료합니다."
