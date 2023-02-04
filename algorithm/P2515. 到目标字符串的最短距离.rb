# frozen_string_literal: true

# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023/2/4 21:07
# FilePath: P2515. 到目标字符串的最短距离.rb
# Description:

load "common/leetcode.rb"

# @param {String[]} words
# @param {String} target
# @param {Integer} start_index
# @return {Integer}
def closet_target(words, target, start_index)
    minimum, n = words.length, words.length
    words.each_with_index do |word, i|
        minimum = [minimum, (i - start_index).abs, n - (i - start_index).abs].min if word == target
    end
    minimum == words.length ? -1 : minimum
end

if __FILE__ == $PROGRAM_NAME
    p closet_target(words = %w[hello i am leetcode hello], target = "hello", start_index = 1)
end


