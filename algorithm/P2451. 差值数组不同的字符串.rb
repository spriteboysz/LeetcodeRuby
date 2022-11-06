# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-11-06 17:48
# FilePath: P2451. 差值数组不同的字符串.rb
# Description:

load "common/leetcode.rb"

# @param {String[]} words
# @return {String}
def odd_string(words)
    diff, hash = [], Hash.new(0)
    words.each do |word|
        cur, chars = [], word.chars
        chars.each_with_index do |c, i|
            next if i == 0
            cur << c.ord - chars[i - 1].ord
        end
        hash[cur] += 1
        diff << cur
    end
    diff.each_with_index do |el, i|
        return words[i] if hash[el] == 1
    end
end

if __FILE__ == $PROGRAM_NAME
    p odd_string(%w[aaa bob ccc ddd])
end
