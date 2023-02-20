# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-20 23:35
# FilePath: P0205. 同构字符串.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @param {String} t
# @return {Boolean}
def is_isomorphic(s, t)
    (0...s.length).each do |i|
        return false unless s.index(s[i]) == t.index(t[i])
    end
    true
end

if __FILE__ == $PROGRAM_NAME
    p is_isomorphic(s = "egg", t = "add")
end


