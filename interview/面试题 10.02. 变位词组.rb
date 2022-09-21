# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-21 22:32
# FilePath: 面试题 10.02. 变位词组.rb
# Description:

load "common/leetcode.rb"

# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)
    hash = Hash.new([])
    strs.each do |word|
        key = word.chars.sort.join
        hash[key] = Array.new(hash[key]) << word
    end
    hash.values
end

if __FILE__ == $PROGRAM_NAME
    p group_anagrams(%w[eat tea tan ate nat bat])
end
