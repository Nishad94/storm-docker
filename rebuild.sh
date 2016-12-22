#!/bin/bash

docker build -t="nishad/base" base
docker build -t="nishad/zookeeper" zookeeper
docker build -t="nishad/storm" storm
docker build -t="nishad/storm-nimbus" storm-nimbus
docker build -t="nishad/storm-supervisor" storm-supervisor
docker build -t="nishad/storm-ui" storm-ui
