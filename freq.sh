#!/bin/bash
cat "${1:-/dev/stdin}" | tr '[:upper:]' '[:lower:]' | tr -cs '[:alpha:]' '\n' | grep -v '^$' | sort | uniq -c | sort -rn | head -20
