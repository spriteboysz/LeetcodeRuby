# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-21 00:05
# FilePath: P0049. 字母异位词分组.rb
# Description:

load "common/leetcode.rb"

# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)
    hash = Hash.new([])
    strs.each do |word|
        key = word.chars.sort.join
        words = Array.new(hash[key]) << word
        hash[key] = words
    end
    hash.values
end

if __FILE__ == $PROGRAM_NAME
    p group_anagrams(strs = %w[eat tea tan ate nat bat])
end
