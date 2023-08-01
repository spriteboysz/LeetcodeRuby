# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-07-31 22:55
# FilePath: P1503. 所有蚂蚁掉下来前的最后一刻.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} n
# @param {Integer[]} left
# @param {Integer[]} right
# @return {Integer}
def get_last_moment(n, left, right)
    (left + right.map { |x| n - x }).max
end

if __FILE__ == $PROGRAM_NAME
    p get_last_moment(n = 4, left = [4, 3], right = [0, 1])
end


