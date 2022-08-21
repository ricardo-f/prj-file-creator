# Project File Creator
## Objective:
Create a basic directory and file structure to terraform projects

## The brief how:
Using a bunch of shell script functions

## How?
---
**General Notes**
- The **TF_FILES** var set the file name
- Inside the script change the value of the env list for terraform tfvars file, the var is **PRJ_ENVS**
- Inside the _f_gha_files_ function is a var called **GHA_FILES**, I like to keep CI and CD apart from each other(personal preference)
---
- Create basic files intended for a lab purposes:

```
./vulcan.sh basic
```

- Create basic files for multiple envs:

```
 ./vulcan.sh basicEnv
```
- Create basic with env and pipeline files
    - Github Actions:
      ```
      ./vulcan.sh basicEnv githubActions
      ```
    - Bitbucket Pipeline:
      ```
      ./vulcan.sh basicEnv bitbucket
      ```
    - Jenkins
      ```
      ./vulcan.sh basicEnv jenkins
      ```
## Why?
- This one is pure laziness, 

## Want to help?

- Create your branch
- Add your code
- Open a PR with a clear explanation of the changes

### Extra Docs and Ref:
- [Why _vulcan_?](https://en.wikipedia.org/wiki/Vulcan_(mythology))
