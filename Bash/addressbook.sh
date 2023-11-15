#!/bin/bash

# Шлях до файлу addressbook 
book="addressbook.txt" 

# Створити файл, якщо він не існує
if [ ! -f "$book" ]; then
  touch "$book"
fi

# Додати новий запис
if [ "$1" = "new" ]; then
  name="$2"
  email="$3"
  echo "$name $email" >> "$book"

# Вивести всі записи  
elif [ "$1" = "list" ]; then
  if [ -s "$book" ]; then 
    cat "$book"
  else
    echo "addressbook is empty"
  fi

# Видалити запис за іменем  
elif [ "$1" = "remove" ]; then
  name="$2"
  sed -i "/$name/d" "$book"

# Видалити всі записи
elif [ "$1" = "clear" ]; then
  > "$book"

# Знайти записи за іменем
elif [ "$1" = "lookup" ]; then
  name="$2"
  grep -e "^$name" "$book"
fi