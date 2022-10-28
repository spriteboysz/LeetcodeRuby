# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-28 23:56
# FilePath: P2433. 找出前缀异或的原始数组.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} pref
# @return {Integer[]}
def find_array(pref)
    nums = [pref[0]]
    pref.each_with_index do |num, i|
        next if i == 0
        nums << (num ^ pref[i - 1])
    end
    nums
end

if __FILE__ == $PROGRAM_NAME
    p find_array(pref = [5, 2, 0, 3, 1])
end
