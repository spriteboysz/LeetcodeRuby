# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-23 22:24
# FilePath: P0387. 字符串中的第一个唯一字符.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @return {Integer}
def first_uniq_char(s)
    hash = Hash.new(0)
    s.each_char { |c| hash[c] += 1 }
    s.chars.each_with_index do |c, i|
        return i if hash[c] == 1
    end
    -1
end

if __FILE__ == $PROGRAM_NAME
    p first_uniq_char(s = "loveleetcode")
    p first_uniq_char(s = "aabb")
end
