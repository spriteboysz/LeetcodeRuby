# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-12 16:54
# FilePath: P0692. 前K个高频单词.rb
# Description:

load "common/leetcode.rb"

# @param {String[]} words
# @param {Integer} k
# @return {String[]}
def top_k_frequent(words, k)
    hash = Hash.new(0)
    words.each { |word|
        hash[word] += 1
    }
    hash.collect { |word, count|
        [word, count]
    }.sort_by { |item|
        [-item[1], item[0]]
    }[0, k].collect { |item|
        item[0]
    }
end

if __FILE__ == $PROGRAM_NAME
    p top_k_frequent(%w[the day is sunny the the the sunny is is], k = 4)
end


