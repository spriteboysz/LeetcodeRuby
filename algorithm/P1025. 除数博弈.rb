# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-09 21:58
# FilePath: P1025. 除数博弈.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} n
# @return {Boolean}
def divisor_game(n)
    n % 2 == 0
end

if __FILE__ == $PROGRAM_NAME
    p divisor_game(2)
end


