#!/bin/bash

mkdir -p hosts/$1/{public,private,cacerts}
step certificate create \
  --no-password \
  --insecure \
  --size 4098 \
  --kty RSA \
  --ca ca/root-ca.pem \
  --ca-key ca/root-ca.pub \
  $1 \
  hosts/$1/private/$1.pem \
  hosts/$1/public/$1.pub

cp ca/* hosts/$1/cacerts
