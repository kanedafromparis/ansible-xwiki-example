#!/bin/bash
#
# This is a verification script
# Ii should out put 1
#
TMPVAR=$(ssh nodexwiki java -version 2>&1) && echo "$TMPVAR" | grep "25.60-b23" | wc -l
