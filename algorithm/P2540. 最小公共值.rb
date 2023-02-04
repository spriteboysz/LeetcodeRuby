# frozen_string_literal: true

# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023/2/4 20:51
# FilePath: P2540. 最小公共值.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer}
def get_common(nums1, nums2)
    hash1 = Hash.new
    nums1.each do |num|
        hash1[num] = true
    end
    nums2.each do |num|
        return num if hash1.has_key?(num)
    end
    -1
end

if __FILE__ == $PROGRAM_NAME
    p get_common(nums1 = [1, 2, 3], nums2 = [2, 4])
end


