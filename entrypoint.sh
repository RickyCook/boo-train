#!/bin/bash -e
case "$1" in
    serve*)
        shift
        bundle exec rails server "$@"
        ;;
    ci*)
        bundle exec rake ci
    *)
        bundle exec "$@"
        ;;
esac
