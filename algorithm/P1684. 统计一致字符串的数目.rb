# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 20:46
# FilePath: P1684. 统计一致字符串的数目.rb
# Description: 

# @param {String} allowed
# @param {String[]} words
# @return {Integer}
def count_consistent_strings(allowed, words)
    cnt = 0
    words.each { |word|
        flag = true
        letters = word.chars.uniq
        letters.each { |c|
            unless allowed.include?(c)
                flag = false
                break
            end
        }
        cnt += 1 if flag
    }
    cnt
end

p count_consistent_strings(allowed = "cad", words = %w[cc acd b ba bac bad ac d])



