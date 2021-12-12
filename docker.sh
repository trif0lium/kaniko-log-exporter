docker run \
  -v $(pwd)/Dockerfile:/kaniko/deploys-dev/Dockerfile \
  -v $(pwd)/build.sh:/kaniko/deploys-dev/build.sh \
  --entrypoint /bin/sh \
  gcr.io/kaniko-project/executor:v1.6.0-debug \
  /kaniko/deploys-dev/build.sh
