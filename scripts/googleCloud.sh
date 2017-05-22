#!/usr/bin/env bash

gcloud compute instances create r-studio \
  --image debian-8-jessie-v20170426 \
  --zone us-central1-a \
