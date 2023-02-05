# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023/2/4 21:38
# FilePath: P2475. 数组中不等三元组的数目.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer}
def unequal_triplets(nums)
    cnt, n = 0, nums.length
    (0...n).each do |i|
        (i + 1...n).each do |j|
            next if nums[i] == nums[j]
            (j + 1...n).each do |k|
                cnt += 1 if nums[i] != nums[k] && nums[j] != nums[k]
            end
        end
    end
    cnt
end

if __FILE__ == $PROGRAM_NAME
    p unequal_triplets(nums = [4, 4, 2, 4, 3])
end


