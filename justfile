test os="ubuntu-22.04" play="dev_box":
  docker build . -f dockerfiles/Dockerfile.{{os}} -t jackhxs/pangu
  docker run jackhxs/pangu ansible-lint
  docker run jackhxs/pangu ansible-playbook --verbose playbooks/{{play}}.yml
