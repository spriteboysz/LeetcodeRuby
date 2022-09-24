# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-24 21:57
# FilePath: P0796. 旋转字符串.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @param {String} goal
# @return {Boolean}
def rotate_string(s, goal)
    s.length == goal.length && !(s + s).index(goal).nil?
end

if __FILE__ == $PROGRAM_NAME
    p rotate_string(s = "abcde", goal = "cdeab")
end
