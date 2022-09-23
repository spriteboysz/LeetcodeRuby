# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-23 21:30
# FilePath: P0217. 存在重复元素.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Boolean}
def contains_duplicate(nums)
    nums.uniq != nums
end

if __FILE__ == $PROGRAM_NAME
    p contains_duplicate([1, 2, 3, 4])
end
