#! /bin/bash

file=$HOME/.bashrc
string='#Elasticsearch path'
echo "" >> $file
grep -q "$string" "$file" || echo "$string" >> "$file"
string='export ELS_HOME=$HOME/elasticsearch'
grep -q "$string" "$file" || echo "$string" >> "$file"
source $file
