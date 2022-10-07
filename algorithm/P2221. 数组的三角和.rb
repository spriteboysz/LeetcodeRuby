# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-07 22:04
# FilePath: P2221. 数组的三角和.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer}
def triangular_sum(nums)
    while nums.length > 1
        nums.each_with_index do |num, i|
            next if i == 0
            nums[i - 1] = (num + nums[i - 1]) % 10
        end
        nums.pop
    end
    nums.first
end

if __FILE__ == $PROGRAM_NAME
    p triangular_sum([1, 2, 3, 4, 5])
end
