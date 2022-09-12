# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-12 21:59
# FilePath: P2085. 统计出现过一次的公共字符串.rb
# Description: 

# @param {String[]} words1
# @param {String[]} words2
# @return {Integer}
def count_words(words1, words2)
    hash1, hash2 = Hash.new(0), Hash.new(0)
    words1.each { |word| hash1[word] += 1 }
    words2.each { |word| hash2[word] += 1 }
    [words1, words2].flatten.uniq.count { |word|
        hash1[word] == 1 && hash2[word] == 1
    }
end

p count_words(words1 = %w[a ab], words2 = %w[a a a ab])



