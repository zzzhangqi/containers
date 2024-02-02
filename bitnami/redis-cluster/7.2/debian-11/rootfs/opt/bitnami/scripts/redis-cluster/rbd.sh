#!/bin/bash

pod_index=($(echo "$POD_NAME" | tr "-" "\n"))

pod_index="${pod_index[-1]}"

if [[ "$pod_index" == "0" ]]; then
    export REDIS_CLUSTER_CREATOR="yes"
    export REDIS_CLUSTER_REPLICAS="1"
fi

exec /opt/bitnami/scripts/redis-cluster/entrypoint.sh /opt/bitnami/scripts/redis-cluster/run.sh