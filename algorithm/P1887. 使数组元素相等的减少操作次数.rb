# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-08-19 21:55
# FilePath: P1887. 使数组元素相等的减少操作次数.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer}
def reduction_operations(nums)
    hash = Hash.new(0)
    nums.each { |num| hash[num] += 1 }
    cnt = 0
    hash.keys.sort.each_with_index { |key, i|
        cnt += i * hash[key]
    }
    cnt
end

if __FILE__ == $PROGRAM_NAME
    p reduction_operations(nums = [1, 1, 2, 2, 3])
end


