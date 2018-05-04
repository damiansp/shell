#! /bin/sh
# finduser --- see if user named by first arg is logged in
who | grep $1
