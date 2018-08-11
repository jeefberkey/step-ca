#!/bin/bash

mkdir -p ca
step certificate create \
  --profile root-ca "FakeCA" \
  --no-password \
  --insecure \
  --size 4098 \
  --kty RSA \
  ca/root-ca.pem ca/root-ca.pub
