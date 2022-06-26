# [WIP] Simple Tools for Developing
Simple devtools to make creating and running code easy!

## Requirements
- Docker
- Make

## How to use
- `make template-{python|go|node|vue|rust}` to pull out required files for running code. These resources will be required to run.
- `make run-{python|go|node|vue|rust}` to spin up a docker container with required tools for the given language

## Notes
### Developing on Windows 10
1. Install WSL2
   1. Super easy! Follow https://docs.microsoft.com/en-us/windows/wsl/install#install-wsl-command
   2. By default, Ubuntu is installed which is perfect
2. Install Docker
   1. Super easy! Follow https://docs.docker.com/desktop/windows/wsl/
   2. Note, the Install steps listed don't seem necessary with version 4.9.1; Settings > General has WSL 2 engine selected by default
3. (Recommended) Install VSCode because it rocks
   1. Super easy! Download your required version https://code.visualstudio.com/download and run the installer