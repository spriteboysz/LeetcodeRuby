# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-16 00:03
# FilePath: P0476. 数字的补数.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} num
# @return {Integer}
def find_complement(num)
    num.to_s(2).chars.map { |x| (1 - x.to_i).to_s }.join.to_i(2)
end

if __FILE__ == $PROGRAM_NAME
    p find_complement(5)
end
