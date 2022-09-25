# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-25 16:44
# FilePath: P1897. 重新分配字符使所有字符串都相等.rb
# Description:

load "common/leetcode.rb"

# @param {String[]} words
# @return {Boolean}
def make_equal(words)
    hash = Hash.new(0)
    words.join.each_char do |c|
        hash[c] += 1
    end
    hash.values.select { |v| v % words.length != 0 }.empty?
end

if __FILE__ == $PROGRAM_NAME
    p make_equal(words = %w[abc aabc bc])
end
