# Project File Creator
## Objective:
Create a basic directory and file structure to terraform projects

## The brief how:
Using a bunch of shell script functions

## How?

- Create basic files intended for a lab purposes:
**Note:** The **TF_FILES** var set file names
```
./vulcan.sh basic
```

- Create basic files for multiple envs:

**Note:** Inside the script change the value of the env list, the var is **PRJ_ENVS**
```
 ./vulcan.sh basicEnv
```

## Why?
- This one is pure laziness, 

## Want to help?

- Create your branch
- Add your code
- Open a PR with a clear explanation of the changes

### Extra Docs and Ref:
- [Why _vulcan_?](https://en.wikipedia.org/wiki/Vulcan_(mythology))