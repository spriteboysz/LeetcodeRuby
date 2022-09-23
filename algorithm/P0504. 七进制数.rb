# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-23 23:23
# FilePath: P0504. 七进制数.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} num
# @return {String}
def convert_to_base7(num)
    num.to_s(7)
end

if __FILE__ == $PROGRAM_NAME
    p convert_to_base7(100)
    p convert_to_base7(-7)
end
