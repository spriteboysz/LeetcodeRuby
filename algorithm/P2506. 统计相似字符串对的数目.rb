# frozen_string_literal: true

# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023/2/4 21:14
# FilePath: P2506. 统计相似字符串对的数目.rb
# Description:

load "common/leetcode.rb"

# @param {String[]} words
# @return {Integer}
def similar_pairs(words)
    words.each_with_index do |word, i|
        words[i] = word.chars.uniq.sort.join("")
    end
    cnt = 0
    words.each_with_index do |word, i|
        (i + 1..words.length).each do |j|
            cnt += 1 if word == words[j]
        end
    end
    cnt
end

if __FILE__ == $PROGRAM_NAME
    p similar_pairs(words = %w[aba aabb abcd bac aabc])
end


