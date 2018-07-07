#!/bin/bash

ls $HOME | grep -F py # -F for fast grep agains fixed strings (not regex)
ls $HOME | grep txt$
