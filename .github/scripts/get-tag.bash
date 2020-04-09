#!/bin/bash

STATUS=$(curl -s -LI "https://api.github.com/repos/${REPOSITORY_NAME}/releases/tags/${TAG_NAME}" \
    --header "authorization: Bearer ${BEARER_TOKEN}" \
    --header "content-type: application/json" \
    -o /dev/null \
    -w '%{http_code}')

echo $STATUS
exit 0
