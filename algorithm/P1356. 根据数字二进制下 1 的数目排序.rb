# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-17 22:12
# FilePath: P1356. 根据数字二进制下 1 的数目排序.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} arr
# @return {Integer[]}
def sort_by_bits(arr)
    arr.sort_by do |num|
        [num.to_s(2).count("1"), num]
    end
end

if __FILE__ == $PROGRAM_NAME
    p sort_by_bits(arr = [1024, 512, 256, 128, 64, 32, 16, 8, 4, 2, 1])
    p sort_by_bits(arr = [2, 3, 5, 7, 11, 13, 17, 19])
end
