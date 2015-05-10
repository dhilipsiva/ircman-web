#! /bin/sh
#
# deploy.sh
# Copyright (C) 2014 dhilipsiva <dhilipsiva@gmail.com>
#
# Distributed under terms of the MIT license.
#

ember build --environment production
sed -i 's/\.\.\/fonts/\/\/d2n6qxtmzlogze.cloudfront.net\/fonts/g' dist/assets/vendor-*.css
aws s3 sync dist/ s3://ircman-test/ --acl public-read
cp dist/index.html ../ircman/generated
