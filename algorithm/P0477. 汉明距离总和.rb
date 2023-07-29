# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-07-27 23:10
# FilePath: P0477. 汉明距离总和.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer}
def total_hamming_distance(nums)
    hamming = 0
    (0...30).each { |i|
        zeros, ones = 0, 0
        nums.each { |num|
            if (1 << i) & num == 0
                zeros += 1
            else
                ones += 1
            end
        }
        hamming += zeros * ones
    }
    hamming
end

if __FILE__ == $PROGRAM_NAME
    p total_hamming_distance(nums = [4,14,2])
end


