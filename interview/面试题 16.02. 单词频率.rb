# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-20 23:47
# FilePath: 面试题 16.02. 单词频率.rb
# Description:

load "common/leetcode.rb"

class WordsFrequency
    attr_accessor :hash
    # :type book: String[]
    def initialize(book)
        @hash = Hash.new(0)
        book.each { |word| @hash[word] += 1 }
    end

    # :type word: String
    # :retype: Integer
    def get(word)
        @hash[word]
    end

end

if __FILE__ == $PROGRAM_NAME
    words_frequency = WordsFrequency.new(%w[i have an apple he have a pen])
    p words_frequency.get("you")
    p words_frequency.get("have")
end
