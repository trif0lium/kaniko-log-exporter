docker run \
  -v $(pwd)/Dockerfile:/deploys.dev/Dockerfile \
  -v $(pwd)/build.sh:/deploys.dev/build.sh \
  --entrypoint /bin/sh \
  gcr.io/kaniko-project/executor:v1.6.0-debug \
  /deploys.dev/build.sh
