#!/bin/bash

lower=(a b c d e f g h i j k l m n o p q r s t u v w x y z)
upper=(A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)
#files에 있는거 다 검사 glob으로
for filepath in files/*; do
    #lower배열을 돌아
    for i in "${!lower[@]}"; do
    #대소문자 같은 취급해야하니까
        if [[ $filepath = files/${lower[i]}* ]] || [[ $filepath = files/${upper[i]}* ]]; then
            mv "$filepath" "${lower[i]}/" #lower 파일로 이동시켜라
        fi
        
    done
done