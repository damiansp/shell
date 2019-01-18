#!/bin/bash

# findUser -- see if user named by first arg is logged in
who | grep $1
