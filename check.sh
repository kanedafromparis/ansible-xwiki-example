#!/bin/bash
#
# This is a verification script
# Ii should out put 1
#
TMPVAR=$(ssh nodexwiki java -version 2>&1) && echo "$TMPVAR" | grep "24.79-b02" | wc -l
