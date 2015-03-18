#! /bin/bash

els="elasticsearch"
VERSION="1.4.4"
INSTALL_DIR="/home/$USER/"
LINK="https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-$VERSION.tar.gz"
echo "Downloading $els-$VERSION"
curl -L -O $LINK
echo "untarring downloaded file"
tar -xvf elasticsearch-$VERSION.tar.gz
echo "Deleting tar"
rm -rf "$els-$VERSION.tar.gz"
echo "Renaming $els-$VERSION to $els"
mv "elasticsearch-$VERSION" "$els"
echo "moving $els to home directory"
mv "$els" "$INSTALL_DIR"
