#!/bin/bash
export BUCKET=${BUCKET:=data-science-on-gcp-bucket-2}
echo "Uploading to bucket $BUCKET..."
gsutil -m cp *.csv gs://$BUCKET/flights/raw
#gsutil -m acl ch -R -g google.com:R gs://$BUCKET/flights/raw
