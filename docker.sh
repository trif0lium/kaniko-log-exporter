docker run \
  gcr.io/kaniko-project/executor:debug \
  -v $(pwd)/Dockerfile:/deploys.dev/Dockerfile \
  -v $(pwd)/build.sh:/deploys.dev/build.sh \
  --entrypoint "/busybox/sh" /deploys.dev/build.sh
