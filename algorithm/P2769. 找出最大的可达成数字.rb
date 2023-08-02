# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-08-01 23:26
# FilePath: P2769. 找出最大的可达成数字.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} num
# @param {Integer} t
# @return {Integer}
def the_maximum_achievable_x(num, t)
    num + t * 2
end

if __FILE__ == $PROGRAM_NAME
    p the_maximum_achievable_x(num = 3, t = 2)
end


