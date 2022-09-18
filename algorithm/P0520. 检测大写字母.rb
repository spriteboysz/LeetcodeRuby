# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-18 22:52
# FilePath: P0520. 检测大写字母.rb
# Description:

load "common/leetcode.rb"

# @param {String} word
# @return {Boolean}
def detect_capital_use(word)
    downcase = ("a".."z").to_a
    if downcase.include?(word[0])
        word.downcase == word
    elsif downcase.include?(word[1])
        word[1..].downcase == word[1..]
    else
        word[1..].upcase == word[1..]
    end
end

if __FILE__ == $PROGRAM_NAME
    p detect_capital_use("USA")
    p detect_capital_use("leetcode")
    p detect_capital_use("Leetcode")
end
