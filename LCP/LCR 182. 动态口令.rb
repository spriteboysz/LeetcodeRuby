# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-06 20:42
# FilePath: LCR 182. 动态口令.rb
# Description:

load "common/leetcode.rb"

# @param {String} password
# @param {Integer} target
# @return {String}
def dynamic_password(password, target)
    password[target..-1] + password[0...target]
end

if __FILE__ == $PROGRAM_NAME
    p dynamic_password(password = "s3cur1tyC0d3", target = 4)
end


