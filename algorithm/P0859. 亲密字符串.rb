# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-21 23:16
# FilePath: P0859. 亲密字符串.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @param {String} goal
# @return {Boolean}
def buddy_strings(s, goal)
    return false if s.length != goal.length
    return s.chars.uniq.length < goal.length if s == goal
    diff = []
    s.chars.each_with_index do |c, i|
        diff << [c, goal[i]] unless c == goal[i]
    end
    diff.length == 2 && diff[0][0] == diff[1][1] && diff[0][1] == diff[1][0]
end

if __FILE__ == $PROGRAM_NAME
    p buddy_strings(s = "ab", goal = "ba")
end


