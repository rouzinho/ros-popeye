#!/usr/bin/env bash
# generated from catkin/cmake/templates/setup.bash.in

CATKIN_SHELL=bash

# source setup.sh from same directory as this file
_CATKIN_SETUP_DIR=$(builtin cd "`dirname "${BASH_SOURCE[0]}"`" > /dev/null && pwd)
. "$_CATKIN_SETUP_DIR/setup.sh"
## Automatically added by gummi_base_XXX package

# ATTENTION:This is a workaround to add enviroment variables to devel/setup.bash
# while catkin_make is run so as to parametrize launch files from gummi_base_XXX
# gummi_ee_YYY and gummi_interface. If anything changes in package structure or
# the order in which catkin_make executes, this might break.

export ROS_GUMMI_BASE=template
## Automatically added by gummi_ee_XXX package
export ROS_GUMMI_EE=popeye
