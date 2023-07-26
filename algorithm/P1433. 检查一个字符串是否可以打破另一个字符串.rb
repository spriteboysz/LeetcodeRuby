# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-07-26 22:01
# FilePath: P1433. 检查一个字符串是否可以打破另一个字符串.rb
# Description:

load "common/leetcode.rb"

# @param {String} s1
# @param {String} s2
# @return {Boolean}
def check_if_can_break(s1, s2)
    return false unless s1.size == s2.size
    ss1, ss2 = s1.chars.sort, s2.chars.sort
    flag1, flag2 = false, false
    ss1.each_with_index { |c, i|
        flag1 |= true if c > ss2[i]
        flag2 |= true if c < ss2[i]
    }
    !(flag1 && flag2)
end

if __FILE__ == $PROGRAM_NAME
    p check_if_can_break(s1 = "leetcodee", s2 = "interview")
end


