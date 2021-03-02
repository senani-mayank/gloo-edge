readonly SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

kubectl create ns ratelimit  # create ns if not exists
kubectl apply -f "${SCRIPT_DIR}/rate_limit_server"  # ratelimit server, service and upstream
kubectl apply -f "${SCRIPT_DIR}/backend_virtual_service.yaml"  # backedn vs
kubectl apply -f "${SCRIPT_DIR}/backend_upstream.yaml" # backed upstream
kubectl patch -n gloo-system settings default --type merge --patch "$(cat ${SCRIPT_DIR}/ratelimit_server_settings.yaml)"
