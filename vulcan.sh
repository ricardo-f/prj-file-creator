#! /bin/bash
set -eo pipefail

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
    cd ../..
}

f_create_nodejs_files() {
    mkdir src
    cd src
    mkdir models views controllers routes
    touch index.js
    cd ..
}

f_gha_files() {
    GHA_FILES=("ci" "cd")
    mkdir -p .github/workflows
    cd .github/workflows
    for name in ${GHA_FILES[@]}; do
        touch $name.yaml
    done
    cd ../..
}

f_bitbucket_file() {
    touch bitbucket-pipelines.yml
}

f_jenkinsfile() {
    touch Jenkinsfile
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
    nodeApp)
        f_create_nodejs_files
        echo "Created basic nodejs files based on MVC"
    ;;
    nodeAppEac)
        f_create_tf_basic_files
        f_create_env_files
        f_create_nodejs_files
        echo "Created basic EaC project for NodeJs app"
    ;;
esac

case $2 in
    githubActions)
        f_gha_files
    ;;
    bitbucket)
        f_bitbucket_file
    ;;
    jenkins)
        f_jenkinsfile
    ;;
    *)
    ;;
esac