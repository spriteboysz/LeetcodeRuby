# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-11-04 23:24
# FilePath: P1995. 统计特殊四元组.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer}
def count_quadruplets(nums)
    cnt, n = 0, nums.size
    (0...n).each do |i|
        (i + 1...n).each do |j|
            (j + 1...n).each do |k|
                cur = nums[i] + nums[j] + nums[k]
                (k + 1...n).each do |m|
                    cnt += 1 if cur == nums[m]
                end
            end
        end
    end
    cnt
end

if __FILE__ == $PROGRAM_NAME
    p count_quadruplets(nums = [1, 1, 1, 3, 5])
    p count_quadruplets([9, 6, 8, 23, 39, 23])
    p count_quadruplets([28, 8, 49, 85, 37, 90, 20, 8])
end
