# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-17 23:03
# FilePath: P1980. 找出不同的二进制字符串.rb
# Description:

load "common/leetcode.rb"
require 'set'

# @param {String[]} nums
# @return {String}
def find_different_binary_string(nums)
    n = nums[0].length
    set = Set.new(nums)
    (0...2 ** nums[0].length).each do |num|
        bin = num.to_s(2).rjust(n, "0")
        return bin unless set.include?(bin)
    end
end

if __FILE__ == $PROGRAM_NAME
    p find_different_binary_string(%w[111 011 001])
    p find_different_binary_string(%w[00 01])
end


