# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-07-25 22:48
# FilePath: P2295. 替换数组中的元素.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @param {Integer[][]} operations
# @return {Integer[]}
def array_change(nums, operations)
    hash = Hash.new
    nums.each_with_index { |num, i|
        hash[num] = i
    }
    operations.each { |a, b|
        hash[b] = hash[a]
        hash.delete(a)
    }
    hash.each_pair { |k, v|
        nums[v] = k
    }
    nums
end

if __FILE__ == $PROGRAM_NAME
    p array_change(nums = [1, 2, 4, 6], operations = [[1, 3], [4, 7], [6, 1]])
end


