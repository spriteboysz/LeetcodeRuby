# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-16 23:52
# FilePath: P1394. 找出数组中的幸运数.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} arr
# @return {Integer}
def find_lucky(arr)
    hash = Hash.new(0)
    arr.each { |num| hash[num] += 1 }
    lucky = -1
    hash.each_pair { |k, v| lucky = k if k == v && k > lucky }
    lucky
end

if __FILE__ == $PROGRAM_NAME
    p find_lucky(arr = [1, 2, 2, 3, 3, 3])
end
