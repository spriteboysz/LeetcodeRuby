# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-15 16:55
# FilePath: P2563. 统计公平数对的数目.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @param {Integer} lower
# @param {Integer} upper
# @return {Integer}
def count_fair_pairs(nums, lower, upper)
    nums.sort!

    def process(nums, limit)
        cnt, left, right = 0, 0, nums.length - 1
        while left < right
            if nums[left] + nums[right] > limit
                right -= 1
            else
                cnt += right - left
                left += 1
            end
        end
        cnt
    end

    process(nums, upper) - process(nums, lower - 1)
end

if __FILE__ == $PROGRAM_NAME
    p count_fair_pairs(nums = [0, 1, 7, 4, 4, 5], lower = 3, upper = 6)
end


