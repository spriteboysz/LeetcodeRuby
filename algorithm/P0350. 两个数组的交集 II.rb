# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-23 21:52
# FilePath: P0350. 两个数组的交集 II.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def intersect(nums1, nums2)
    hash1, hash2 = Hash.new(0), Hash.new(0)
    nums1.each { |num| hash1[num] += 1 }
    nums2.each { |num| hash2[num] += 1 }
    set = []
    hash1.each_key do |num|
        time = [hash1[num], hash2[num]].min
        set << [num] * time if !time.nil? && time != 0
    end
    set.flatten
end

if __FILE__ == $PROGRAM_NAME
    p intersect(nums1 = [1, 2, 2, 1], nums2 = [2, 2])
end
