#!/bin/sh
# ran when launching the container

ln -s ~/.tools/pbcopy.sh /bin/pbcopy

echo "boxinit complete!"

exec "$@"
