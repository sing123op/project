
#!/bin/bash

# 첫 번째 인자로 폴더 이름을 입력받습니다.
folder_name=$1

# 폴더 이름이 입력되었는지 확인합니다.
if [ -z "$folder_name" ]; then
    echo "폴더 이름을 입력하세요."
    exit 1
fi

# 폴더가 존재하는지 확인하고, 없으면 생성합니다.
if [ ! -d "$folder_name" ]; then
    mkdir "$folder_name"
fi

# 폴더 안으로 이동합니다.
cd "$folder_name"

# 5개의 파일을 생성합니다.
touch file0.txt file1.txt file2.txt file3.txt file4.txt

# 파일들을 압축하여 tar 파일을 만듭니다.
tar -cvf files.tar file0.txt file1.txt file2.txt file3.txt file4.txt

# 새로 압축을 풀 폴더 생성
mkdir extracted_files

# 압축 파일을 새 폴더에 해제합니다.
tar -xvf files.tar -C extracted_files
