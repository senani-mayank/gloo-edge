readonly SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

kubectl delete -f "${SCRIPT_DIR}/rate_limit_server"  # ratelimit server, service and upstream
kubectl delete -f "${SCRIPT_DIR}/backend_virtual_service.yaml"  # backedn vs
kubectl delete -f "${SCRIPT_DIR}/backend_upstream.yaml" # backed upstream
