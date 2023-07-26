# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-07-25 23:28
# FilePath: P1790. 仅执行一次字符串交换能否使两个字符串相等.rb
# Description:

load "common/leetcode.rb"

# @param {String} s1
# @param {String} s2
# @return {Boolean}
def are_almost_equal(s1, s2)
    return true if s1 == s2
    return false unless s1.size == s2.size
    diff = []
    (0...s1.size).each { |i|
        diff << s1[i] << s2[i] unless s1[i] == s2[i]
    }
    diff.size == 4 && diff[0] == diff[3] && diff[1] == diff[2]
end

if __FILE__ == $PROGRAM_NAME
    p are_almost_equal(s1 = "bank", s2 = "kanb")
end


