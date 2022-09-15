# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-15 23:44
# FilePath: P2068. 检查两个字符串是否几乎相等.rb
# Description:

load "common/leetcode.rb"

# @param {String} word1
# @param {String} word2
# @return {Boolean}
def check_almost_equivalent(word1, word2)
    count = Array.new(26, 0)
    word1.each_char { |c| count[c.ord - 97] += 1 }
    word2.each_char { |c| count[c.ord - 97] -= 1 }
    (0...26).each { |i|
        return false if count[i].abs > 3
    }
    true
end

if __FILE__ == $PROGRAM_NAME
    p check_almost_equivalent(word1 = "abcdeef", word2 = "abaaacc")
    p check_almost_equivalent(word1 = "cccddabba", word2 = "babababab")
    p check_almost_equivalent("zzzyyy", "iiiiii")
end




