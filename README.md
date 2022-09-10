# Project File Creator
## Objective:
Create a basic directory and file structure to terraform, NodeJs or both projects

**Note:** This is my personal approach may not be a best practice.

## The brief how:
Using a bunch of shell script functions

## How?
**General Notes**
- The **TF_FILES** var set the file name
- Inside the script change the value of the env list for terraform tfvars file, the var is **PRJ_ENVS**
- Inside the _f_gha_files_ function is a var called **GHA_FILES**, I like to keep CI and CD apart from each other(personal preference)
- The NodeJs part I've tried to follow the MVC architecture
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
- Create NodeJs MVC basic structure
```
./vulcan.sh nodeApp
```
- Create NodeJs and Terraform
```
./vulcan.sh nodeAppEac
```
- Create NodeJs EAC style and pipeline files
    - Github Actions:
      ```
      ./vulcan.sh nodeAppEac githubActions
      ```
    - Bitbucket Pipeline:
      ```
      ./vulcan.sh nodeAppEac bitbucket
      ```
    - Jenkins
      ```
      ./vulcan.sh nodeAppEac jenkins
      ```
## Why?
- This one is pure laziness.

## Want to help?
- Create your branch
- Add your code
- Open a PR with a clear explanation of the changes

### Extra Docs and Ref:
- [Why _vulcan_?](https://en.wikipedia.org/wiki/Vulcan_(mythology))
- [WTF is **EaC**?](https://medium.com/bemobi-tech/terraform-e-eac-125547ecff13)
> I don't follow EaC by the book, but to me EaC gives shape to the idea of 'You build it, you run it.'
