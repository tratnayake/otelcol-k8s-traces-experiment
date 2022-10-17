# Running an Opten Telemetry Collector in Kubernetes
This makes use of https://github.com/open-telemetry/opentelemetry-operator to run an open telemetry collector as an Operator in Kubernetes.

## Why does this repo exist?
Experimentation.

# Run Instructions
1. Install the operator deployment `kubectl -n apply -f https://github.com/open-telemetry/opentelemetry-operator/releases/latest/download/opentelemetry-operator.yaml`
2. Deploy the otelcol instance `kubectl -n otc-operator-experiment apply -f otelcol-operator.yaml`
3. Deploy the server `kubectl -n otc-operator-experiment apply -f sample-server.yaml`