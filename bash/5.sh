#!/bin/bash

> logs.log

for file in /var/log/*.log; do
    if [ -f "$file" ]; then
        last_line=$(tail -n 1 "$file" 2>/dev/null)
        
        if [ -n "$last_line" ]; then
            echo "$last_line" >> logs.log
        fi
    fi
done

echo "Обработка завершена. Результаты сохранены в logs.log."
