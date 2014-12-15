#!/bin/bash -e
case "$1" in
    rake*)
        shift
        bundle exec rake "$@"
        ;;
    serve*)
        shift
        bundle exec rails server "$@"
        ;;
    *)
        bundle exec "$@"
        ;;
esac
