#!/bin/bash

name="dmytro"

# Знаходимо найбільший існуючий номер файлу
max=$(ls $name* | tail -1 | sed 's/.*\(^[0-9]*\).*/\1/')
if [ -z "$max" ]; then
  max=0
fi

# Генеруємо імена для наступних 25 файлів
for i in $(seq $((max+1)) $((max+25))); do
  touch "$name$i"
done