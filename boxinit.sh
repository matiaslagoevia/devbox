#!/bin/sh
# ran when launching the container

ln -s ~/.tools/pbcopy.sh /bin/pbcopy
curl -s "https://get.sdkman.io" | bash

echo "boxinit complete!"

exec "$@"
