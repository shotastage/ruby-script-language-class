#!/usr/bin/env ruby

system('git pull origin master')
system('git add .')
system('git commit -m "Save draft."')
system('git push origin master')
