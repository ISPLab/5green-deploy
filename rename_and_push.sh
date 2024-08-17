#!/bin/sh
docker tag hardcoreeng/account:v0.6.265 andreusimus/account:latest
docker tag hardcoreeng/front:v0.6.265 andreusimus/front:latest
docker tag hardcoreeng/collaborator:v0.6.265 andreusimus/collaborator:latest
docker tag hardcoreeng/transactor:v0.6.265 andreusimus/transactor:latest
docker tag hardcoreeng/rekoni-service:v0.6.265 andreusimus/rekoni-service:latest
docker push andreusimus/account:latest
docker push andreusimus/front:latest
docker push andreusimus/collaborator:latest
docker push andreusimus/transactor:latest
docker push andreusimus/rekoni-service:latest