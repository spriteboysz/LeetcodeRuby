# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-07-28 20:42
# FilePath: P2657. 找到两个数组的前缀公共数组.rb
# Description:

load "common/leetcode.rb"
require 'set'

# @param {Integer[]} a
# @param {Integer[]} b
# @return {Integer[]}
def find_the_prefix_common_array(a, b)
    common = []
    visited = Set.new
    a.each_with_index { |num, i|
        visited.add(num)
        visited.add(b[i])
        common << (i + 1) * 2 - visited.size
    }
    common
end

if __FILE__ == $PROGRAM_NAME
    p find_the_prefix_common_array(a = [1, 3, 2, 4], b = [3, 1, 2, 4])
end


