# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-12 13:37
# FilePath: P0290. 单词规律.rb
# Description:

load "common/leetcode.rb"

# @param {String} pattern
# @param {String} s
# @return {Boolean}
def word_pattern(pattern, s)
    cc, ss = pattern.chars, s.split
    return false unless cc.length == ss.length && cc.uniq.length == ss.uniq.length
    hash = Hash.new
    cc.each_with_index do |c, i|
        if hash[c].nil?
            hash[c] = ss[i]
        else
            return false unless hash[c] == ss[i]
        end
    end
    true
end

if __FILE__ == $PROGRAM_NAME
    p word_pattern(pattern = "abba", s = "dog cat cat dog")
end


