# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-19 22:29
# FilePath: P0128. 最长连续序列.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer}
def longest_consecutive(nums)
    nums.uniq!.sort!
    return nums.length if nums.length <= 1
    cnt, ref = 0, 1
    (1...nums.length).each do |i|
        if nums[i] - nums[i - 1] == 1
            ref += 1
        else
            ref = 1
        end
        cnt = [cnt, ref].max
    end
    cnt
end

if __FILE__ == $PROGRAM_NAME
    p longest_consecutive([0, 3, 7, 2, 5, 8, 4, 6, 0, 1])
end


