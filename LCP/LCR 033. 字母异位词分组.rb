# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-05 15:07
# FilePath: LCR 033. 字母异位词分组.rb
# Description:

load "common/leetcode.rb"

# @param {String[]} strs
# @return {String[][]}
def group_anagrams(strs)
    hash = Hash.new
    strs.each { |s|
        key = s.chars.sort.join
        if hash.include?(key)
            hash[key] << s
        else
            hash[key] = [s]
        end
    }
    hash.values
end

if __FILE__ == $PROGRAM_NAME
    p group_anagrams(strs = ["eat", "tea", "tan", "ate", "nat", "bat"])
end


