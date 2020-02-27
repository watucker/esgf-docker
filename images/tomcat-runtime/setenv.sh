#!/usr/bin/bash
# Environment variables for ESGF tomcat instances

# Allow the heap size to be set using an environment variable, using 2GB by default
JAVA_MAX_HEAP_MB="${JAVA_MAX_HEAP_MB:-2048}"
# By default, set the initial allocation to 50% of the max
JAVA_INITIAL_HEAP_MB="${JAVA_INITIAL_HEAP_MB:-$(($JAVA_MAX_HEAP_MB / 2))}"
export CATALINA_OPTS="-Xmx${JAVA_MAX_HEAP_MB}m -server -Xms${JAVA_INITIAL_HEAP_MB}m -XX:MaxPermSize=512m -Desg.home=$ESG_HOME"