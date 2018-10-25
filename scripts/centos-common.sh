#!/bin/bash

# Update CentOs with any patches
yum update -y --exclude=kernel

# Tools
yum install -y nano git unzip screeen nc telnet 