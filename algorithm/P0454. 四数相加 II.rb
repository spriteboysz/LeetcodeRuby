# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-07 11:10
# FilePath: P0454. 四数相加 II.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @param {Integer[]} nums3
# @param {Integer[]} nums4
# @return {Integer}
def four_sum_count(nums1, nums2, nums3, nums4)
    hash = Hash.new(0)
    nums1.each do |num1|
        nums2.each do |num2|
            hash[num1 + num2] += 1
        end
    end
    cnt = 0
    nums3.each do |num3|
        nums4.each do |num4|
            cnt += hash[-num3 - num4]
        end
    end
    cnt
end

if __FILE__ == $PROGRAM_NAME
    p four_sum_count(nums1 = [1, 2], nums2 = [-2, -1], nums3 = [-1, 2], nums4 = [0, 2])
end
