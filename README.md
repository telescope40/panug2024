# PANUG 
Project is used to demonstrate how to use NetDevOps for everyday Network Engineers

[![CI](https://github.com/telescope40/panug2024/actions/workflows/ci.yml/badge.svg)](https://github.com/telescope40/panug2024/actions/workflows/ci.yml)

[![Codespaces Prebuilds](https://github.com/telescope40/panug2024/actions/workflows/codespaces/create_codespaces_prebuilds/badge.svg)](https://github.com/telescope40/panug2024/actions/workflows/codespaces/create_codespaces_prebuilds)

### Getting Started 
We want to build test and develop with Net DevOps , Infrastructure as code so lets start with the basic components 
that will build out environment with the tools we need. 
    - Create the following 
        - `setup.sh`
        - `requirements.txt`
        - `Dockerfile`
        - `Makefile`
    - setup.sh does the updating , installation of VM OS level packages 
    - requirements.txt holds all the python packages we will need 
    - Dockerfile is used to create our codespace Virtual Machine
    - Makefile is used to lint , check our code 
    ```sudo ./setup.sh```

### Build out lab
    - Now that we have our basic files , we want to create a development branch to operate out of 
        - git branch dev_1   
        - git checkout branch dev_1   
        - git push  origin dev_1
Now we want to track any development changes on the remote so when we do development there , it will be track by our local repo 
    - git branch --set-upstream-to=origin/dev_1

    - Push our local repo to Github 
    - Describe the network in code 
    - `topology.yaml`

### Git 
    - Tool that helps development state 

### Github Actions 
    - Our CI/CD "pipeline" is via Github Actions 
    - the CI Action will create a build of netlab based on the topology and device configuration templates 
    - It will also run the execution of the validation test to confirm the end result meets our design goals 
    - Mainly for BGP 

    - Github actions will also in parrelle run a Codespace PreBuild Deployment. This environment is meant to be used for testing 
    in the event of failure of CI , it can also be used for a remote LAB environment to experiment with our builds. 

### Python 


