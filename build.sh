/kaniko/executor \
  --no-push \
  --log-format=json \
  --verbosity=debug \
  --dockerfile=/deploys.dev/Dockerfile \
  --context=git://github.com/thecodeisalreadydeployed/fixture-nest.git#refs/tags/v2 | tee /deploys.dev/kaniko.log && echo "DONE" && cat /deploys.dev/kaniko.log