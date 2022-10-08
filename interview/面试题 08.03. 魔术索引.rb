# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-08 21:51
# FilePath: 面试题 08.03. 魔术索引.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} nums
# @return {Integer}
def find_magic_index(nums)
    nums.each_with_index do |num, i|
        return num if num == i
    end
    -1
end

if __FILE__ == $PROGRAM_NAME
    p find_magic_index([0, 2, 3, 4, 5])
end
