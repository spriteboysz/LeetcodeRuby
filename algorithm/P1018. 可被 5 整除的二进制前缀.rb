# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-24 22:27
# FilePath: P1018. 可被 5 整除的二进制前缀.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Boolean[]}
def prefixes_div_by5(nums)
    boolean, n = [], 0
    nums.each do |num|
        n = n * 2 + num
        boolean << (n % 5 == 0)
    end
    boolean
end

if __FILE__ == $PROGRAM_NAME
    p prefixes_div_by5([0, 1, 1])
end
