# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-08 21:13
# FilePath: P0575. 分糖果.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} candy_type
# @return {Integer}
def distribute_candies(candy_type)
    [candy_type.uniq.length, candy_type.length / 2].min
end

if __FILE__ == $PROGRAM_NAME
    p distribute_candies([1, 1, 2, 3])
end
