#!/usr/bin/env bash
#Patching for namespace
oc patch -n $1 deployment/nexus --type json -p '[{"op": "replace", "path": "/spec/template/spec/containers/0/ports/0", "value": {"name": "docker", "protocol": "TCP", "containerPort": 5000}}, {"op": "replace", "path": "/spec/template/spec/containers/0/ports/0", "value": {"protocol": "TCP", "containerPort": 8443}}, {"op": "replace", "path": "/spec/template/spec/containers/0/env/0/value", "value": "nexus"}]'


