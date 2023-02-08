# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-08 22:30
# FilePath: P0819. 最常见的单词.rb
# Description:

load "common/leetcode.rb"

# @param {String} paragraph
# @param {String[]} banned
# @return {String}
def most_common_word(paragraph, banned)
    %w[! ? ' , ; .].each do |punctuation|
        paragraph.gsub!(punctuation, " ")
    end

    hash = Hash.new(0)
    paragraph.downcase.split.each do |word|
        hash[word] += 1 unless banned.include?(word)
    end
    hash.sort_by { |_, v| v }[-1][0]
end

if __FILE__ == $PROGRAM_NAME
    p most_common_word("Bob hit a ball, the hit BALL flew far after it was hit.", ["hit"])
    p most_common_word("a, a, a, a, b,b,b,c, c", ["a"])
end


