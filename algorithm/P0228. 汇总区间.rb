# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-07-29 21:48
# FilePath: P0228. 汇总区间.rb
# Description:

load "common/leetcode.rb"
# @param {Integer[]} nums
# @return {String[]}
def summary_ranges(nums)
    range = []
    nums << 2 ** 31 + 1
    left, right = 0, 0
    while right < nums.size - 1
        if nums[right + 1] == nums[right] + 1
            right += 1
            next
        end
        if left == right
            range << nums[right].to_s
        else
            range << "#{nums[left]}->#{nums[right]}"
        end
        left, right = right + 1, right + 1
    end
    range
end

if __FILE__ == $PROGRAM_NAME
    p summary_ranges(nums = [0, 1, 2, 4, 5, 7])
end


