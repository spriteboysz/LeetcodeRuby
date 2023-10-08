# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-05 22:51
# FilePath: LCR 068. 搜索插入位置.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @param {Integer} target
# @return {Integer}
def search_insert(nums, target)
    nums.each_with_index do |num, i|
        return i if num >= target
    end
    nums.length
end

if __FILE__ == $PROGRAM_NAME
    p search_insert(nums = [1, 3, 5, 6], target = 5)
end


