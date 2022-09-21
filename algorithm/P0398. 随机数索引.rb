# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-21 23:38
# FilePath: P0398. 随机数索引.rb
# Description:

load "common/leetcode.rb"

class Solution
    attr_accessor :nums, :hash
    # :type nums: Integer[]
    def initialize(nums)
        @nums = nums
        @hash = Hash.new([])
        nums.each_with_index { |num, i| @hash[num] = Array.new(@hash[num]) << i }
    end

    # :type target: Integer
    # :rtype: Integer
    def pick(target)
        n = @hash[target].length
        @hash[target][rand(n)]
    end
end

if __FILE__ == $PROGRAM_NAME
    solution = Solution.new([1, 2, 3, 3, 3])
    p solution.pick(1)
    p solution.pick(3)
    p solution.pick(3)
end
