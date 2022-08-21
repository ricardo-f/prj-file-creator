#! /bin/bash

PRJ_ENVS=("prod" "dev")
TF_FILES=("main" "data" "variables" "outputs")

f_create_tf_basic_files() {
  mkdir terraform
  cd terraform
  for file in ${TF_FILES[@]}; do
    touch $file.tf
  done
}

f_create_env_files() {
  mkdir envs
  cd envs
  for env in ${PRJ_ENVS[@]}; do
    touch $env.tfvars
  done
  cd ..
}

case $1 in
basic)
  f_create_tf_basic_files
  echo "Created basic terraform file"
  ;;
basicEnv)
  f_create_tf_basic_files
  f_create_env_files
  echo "Created basic terraform file with tfvars"
  ;;
esac
