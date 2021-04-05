---
title: "Getting started with Docker"
output: rmarkdown::html_vignette
vignette: >
  %\VignetteIndexEntry{Getting started with httr}
  %\VignetteEngine{knitr::rmarkdown}
  %\VignetteEncoding{UTF-8}
---

# quickstart guide

The goal of this document is to help you to create your own docker image and run it as quickly as possible. before starting i recomend you to read something about docker and container."[Docker-totarial](https://docs.docker.com/get-started/overview/)".


## Let's start!

ok, the first step is to create the directory that you want to put your files about the container there, and then inside that directory you should create the `Dockerfile`. `Dockerfile` is like a workflow for docker in creating your image. It tells docker which `base` (for example i used Rocker which exists on Docker Hub and contains a whole bunch of images relevant to R users) you are going to use and which libraries you are going to install. you can download the `Dockerfile` from my repository and directly use it. inside the container also you can install all libraries as i said. list of the libraries that i used to install also is in the separate file ready to use or modify.

## Creating Image
To have Docker create an image from this Dockerfile, you need to install Docker on your system (obviously.). You can find it here: "[Get-Docker](Https://Docs.Docker.Com/Get-Docker/)". Save the file above with the filename Dockerfile without any extension. Then open a Terminal/Bash session and navigate to the folder containing the Dockerfile. to edit the Dockerfile you can use `vim`, `nano`, or other editors. for those who use windows platform, thay can download `nano.exe` and put it in `windows/system32` folder and run nano.exe directly from `CMD`.
Then use the following command to build the image:
```{r}
Docker build . -t "name of your container"
```

for instance i used:
```{r}
Docker build . -t parsboy66/rstadio
```

it takes plenty of time to make this image. 

## Running your image
Now that you have an image you can start creating containers from it. This can be done from the Terminal/Bash as well. Run the following command to start your container:
```{r}
docker run --rm -d parsboy66/rstadio
```
--rm denotes that after stopping the container you want to remove it, which I find helpful.\
-d denotes that this container will run detached from any Terminal session. Now you can use your Terminal session for other things.