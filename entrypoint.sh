#!/bin/bash -e
case "$1" in
    serve*)
        shift
        bundle exec rails server "$@"
        ;;
    *)
        bundle exec "$@"
        ;;
esac
