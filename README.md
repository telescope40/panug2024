# PANUG 
Project is used to demonstrate how to use NetDevOps for everyday Network Engineers. 
This is a demo where BGP Network is design is deployed into a lab environment netlab , validates criteria and performs this 
in a CI function of a Github runner and offer the use of Codespaces to deploy a lab and troubleshoot any issues. 

Status Badge of CI in Dev_1
[![CI](https://github.com/telescope40/panug2024/actions/workflows/ci.yml/badge.svg)](https://github.com/telescope40/panug2024/actions/workflows/ci.yml)

Status Badge of Codespace in Dev_1
[![Codespaces Prebuilds](https://github.com/telescope40/panug2024/actions/workflows/codespaces/create_codespaces_prebuilds/badge.svg)](https://github.com/telescope40/panug2024/actions/workflows/codespaces/create_codespaces_prebuilds)

"Pipeline Diagram"
![PANUG.drawio.svg](..%2F..%2FDesktop%2FPANUG.drawio.svg)


### Getting Started 
We start in Local Development with the goal of adding BGP Security Following the Guidelines of RFC 7454
The goal is to 
- filter prefixes to our ISP to make sure we only advertise public routes 
- Ensure we accept a 0.0.0.0 route from our ISP Providers 

We also want to make sure OSPF & iBGP is online for our code

We want to build test and develop with Net DevOps , Infrastructure as code so lets start with the basic components 
that will build out environment with the tools we need. 
    - Create the following 
        - `setup.sh`
        - `requirements.txt`
        - `Dockerfile`
    - setup.sh does the updating , installation of VM OS level packages 
    - requirements.txt holds all the python packages we will need 
    - Dockerfile is used to create our codespace Virtual Machine
    ```bash ./setup.sh```

### Build out lab
    Push to the Github Repo and we can see there is two Github Actions for our Development Branch
    1. Self Hosted Runner to check our Network Configuration Validatiion and execute tests 
    2. Codespace build of the same parameters. 

Our entire lab network is built with IaaC with Netlab - https://netlab.tools/
The `topology.yaml` file describes our environment and is how we create the lab and configuration in both scenarios 

### Github CodeSpace
    - Our free VM in Github where we can directly test the network topology and commit to the repo. 
    

### Github Actions 
    - Our CI/CD "pipeline" is via Github Actions 
    - the CI Action will create a build of netlab based on the topology and device configuration templates 
    - It will also run the execution of the validation test to confirm the end result meets our design goals 
    - Mainly for BGP 

    - Github actions will also in parrelle run a Codespace PreBuild Deployment. This environment is meant to be used for testing 
    in the event of failure of CI , it can also be used for a remote LAB environment to experiment with our builds. 

    - When CI passes all tests is will upload the Artifacts to the Actions job and also push a new branch with the configuration of all the devices , which we couldin theory then use in a CD portion of this exercise. 

### Python 
    - Python is the scripting langauage that is used to perform the netlab validation tests , it is not directly used repo but understanding it matters for custom tests 




