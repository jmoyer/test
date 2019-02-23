#!/bin/bash

for i in `find . -type f -exec echo {} \;`; do cp $i random/`openssl rand -base64 29 | tr -d "=+/" | cut -c1-25`.pdf; done