# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023/2/5 22:38
# FilePath: P2423. 删除字符使频率相同.rb
# Description:

load "common/leetcode.rb"

# @param {String} word
# @return {Boolean}
def equal_frequency(word)
    hash = Hash.new(0)
    word.chars.each do |c|
        hash[c] += 1
    end
    word.chars.each do |c|
        hash2 = hash.clone
        hash2[c] -= 1
        return true if hash2.values.delete_if { |v| v == 0 }.uniq.length == 1
    end
    false
end

if __FILE__ == $PROGRAM_NAME
    p equal_frequency(word = "abcc")
    p equal_frequency(word = "aazz")
    p equal_frequency(word = "bac")
end


