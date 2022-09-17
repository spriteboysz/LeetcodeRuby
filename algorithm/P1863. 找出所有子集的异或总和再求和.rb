# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-17 21:59
# FilePath: P1863. 找出所有子集的异或总和再求和.rb
# Description:

load "common/leetcode.rb"

def xor(nums)
    ret = 0
    nums.each { |num| ret ^= num }
    ret
end

# @param {Integer[]} nums
# @return {Integer}
def subset_xor_sum(nums)
    sum = 0
    (1..nums.length).each do |i|
        sum += nums.combination(i).map { |v| xor(v) }.sum
    end
    sum
end

if __FILE__ == $PROGRAM_NAME
    p subset_xor_sum(nums = [3, 4, 5, 6, 7, 8])
end
