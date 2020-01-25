#!/bin/sh

pattern="$1"

find -name '*.owl' | \
    xargs egrep --color=always '<!--.*'"$pattern" -A100 | \
    sed -n 's|<rdfs:label.*>\(.*\)</rdfs:label>|\1|p' | \
    head -n1
