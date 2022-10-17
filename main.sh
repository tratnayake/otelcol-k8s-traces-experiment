#! /bin/sh

#1. Create the namespace
echo "Creating the namespace..."
NAMESPACE=otc-experiment-test

kubectl create namespace $NAMESPACE

#2. Apply the operator to the entire cluster
echo "Applying the operator to the entire cluster..."
kubectl apply -f https://github.com/open-telemetry/opentelemetry-operator/releases/latest/download/opentelemetry-operator.yaml


#3. Spin up the sample-server
echo "Starting up the sample-go-server"
kubectl -n otc-operator-experiment apply -f sample-server.yaml

#4. Start instance of the collector.
echo "Start a collector..."
kubectl -n otc-operator-experiment apply -f otelcol-operator.yaml


echo "COMPLETE"
echo "Remember to kubectl -n otc-operator-experiment delete -f sample-server.yaml"
echo "Remember to kubectl -n otc-operator-experiment delete -f otelcol-operator.yaml"