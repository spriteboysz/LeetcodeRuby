# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-15 22:26
# FilePath: P2284. 最多单词数的发件人.rb
# Description:

load "common/leetcode.rb"

# @param {String[]} messages
# @param {String[]} senders
# @return {String}
def largest_word_count(messages, senders)
    hash = Hash.new(0)
    senders.each_with_index do |sender, i|
        hash[sender] += messages[i].split.length
    end
    hash.max_by { |k, v| [v, k] }[0]
end

if __FILE__ == $PROGRAM_NAME
    p largest_word_count(["Hello userTwooo", "Hi userThree", "Wonderful day Alice", "Nice day userThree"],
                         %w[Alice userTwo userThree Alice])
end


