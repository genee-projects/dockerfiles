#!/bin/bash

DIR=$(dirname $0)

[ -f $DIR/sphinx.conf ] && cat $DIR/sphinx.conf
[ -d $DIR/conf.d ] && find $DIR/conf.d -name "*.conf" -exec cat {} \;
