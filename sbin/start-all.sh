#!/bin/bash

BIN=$(dirname "${BASH_SOURCE-$0}")
BIN=$(cd "${BIN}">/dev/null; pwd)
${BIN}/elasticsearch.sh start
${BIN}/kibana.sh start
${BIN}/logstash.sh start
${BIN}/elasticsearch.sh status
${BIN}/kibana.sh status
${BIN}/logstash.sh status
