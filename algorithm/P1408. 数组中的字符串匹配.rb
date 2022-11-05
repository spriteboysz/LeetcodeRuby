# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-11-05 22:26
# FilePath: P1408. 数组中的字符串匹配.rb
# Description:

load "common/leetcode.rb"

# @param {String[]} words
# @return {String[]}
def string_matching(words)
    matching = []
    words.each_with_index do |a, i|
        words.each_with_index do |b, j|
            if i != j && b.include?(a)
                matching << a
                break
            end
        end
    end
    matching
end

if __FILE__ == $PROGRAM_NAME
    p string_matching(words = %w[leetcode et code])
end
