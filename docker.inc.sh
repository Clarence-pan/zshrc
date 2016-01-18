export DOCKER_HOST_IP=192.168.99.100
export DOCKER_HOST=tcp://$DOCKER_HOST_IP:2376
export DOCKER_CERT_PATH=~/.docker/machine/machines/default
export DOCKER_TLS_VERIFY=1

function docker-enter() {
    if [ -z "$1" ]; then
        echo "Usage: `basename "$0"` CONTAINER [COMMAND [ARG]...]"
        echo ""
        echo "Enters the Docker CONTAINER and executes the specified COMMAND."
        echo "If COMMAND is not specified, runs an interactive shell in CONTAINER."
    else
        if [ -z "$1" ]; then
            echo "WARN Cannot find the given container"
            return
        fi

        CONTAINER="$1"

        shift

        if [ -z "$1" ]; then
            # No command given.
            # Use su to clear all host environment variables except for TERM,
            # initialize the environment variables HOME, SHELL, USER, LOGNAME, PATH,
            # and start a login shell.
            #sudo $NSENTER "$OPTS" su - root
            docker exec -it "$CONTAINER" su - root
        else
            # Use env to clear all host environment variables.
            docker exec -it "$CONTAINER" $@
        fi
    fi
}
