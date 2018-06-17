#!/bin/sh

# usage
# ./install-cid-plugin.sh plugin1.zip plugin2.zip ...

target=/cid/html/ui/plugins/

for plugin in "$@"
do
	echo -e "Installing $plugin into $target"
	unzip -o "$plugin"  -x "__MACOSX*" -d "$target"
done
