# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-05-02 22:52
# FilePath: P2586. 统计范围内的元音字符串数.rb
# Description:

load "common/leetcode.rb"
# @param {String[]} words
# @param {Integer} left
# @param {Integer} right
# @return {Integer}
def vowel_strings(words, left, right)
    vowels = "aeiouAEIOU"
    cnt = 0
    words.each_with_index do |word, i|
        next unless i.between?(left, right)
        if vowels.include?(word[0]) and vowels.include?(word[-1])
            cnt += 1
        end
    end
    cnt
end

if __FILE__ == $PROGRAM_NAME
    p vowel_strings(words = %w[hey aeo mu ooo artro], left = 1, right = 4)
end


