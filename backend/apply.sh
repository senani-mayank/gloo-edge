readonly SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

kubectl create ns backend  # create ns if not exists
kubectl apply -f "${SCRIPT_DIR}"  # apply all configss
