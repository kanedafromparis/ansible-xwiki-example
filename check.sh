#!/bin/bash
#
# This is a verification script
# Ii should out put 1
#
TMPVAR=$(ssh nodexwiki java -version 2>&1) && echo "$TMPVAR" | grep "24.79-b02" | wc -l
TMPVAR=$(ssh nodexwiki mysql -u xwiki --version 2>&1) && echo "$TMPVAR" | grep "5.5.44" | wc -l
curl -s http://nodexwiki:8080/ | grep "tomcat7-admin" | wc -l