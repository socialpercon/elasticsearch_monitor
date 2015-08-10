#!/bin/bash

BIN=$(dirname "${BASH_SOURCE-$0}")
BIN=$(cd "${BIN}">/dev/null; pwd)
${BIN}/elasticsearch.sh stop
${BIN}/kibana.sh stop
${BIN}/logstash.sh stop
${BIN}/elasticsearch.sh status
${BIN}/kibana.sh status
${BIN}/logstash.sh status
