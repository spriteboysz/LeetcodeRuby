# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023/2/4 21:33
# FilePath: P2481. 分割圆的最少切割次数.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} n
# @return {Integer}
def number_of_cuts(n)
    n > 1 && n % 2 == 0 ? n / 2 : n
end

if __FILE__ == $PROGRAM_NAME
    p number_of_cuts(4)
    p number_of_cuts(3)
    p number_of_cuts(1)
end


