#!/bin/sh
# wait-for-mongodb.sh

set -e

host="$1"
shift
cmd="$@"

until mongo --quiet "$host/test" --eval 'quit(db.runCommand({ ping: 1 }).ok ? 0 : 2)'; do
  >&2 echo "Mongodb is unavailable - sleeping"
  sleep 1
done

>&2 echo "Mongodb is up - executing command"
exec $cmd
