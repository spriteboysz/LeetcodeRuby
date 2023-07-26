# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-07-25 23:11
# FilePath: P1807. 替换字符串中的括号内容.rb
# Description:

load "common/leetcode.rb"
# @param {String} s
# @param {String[][]} knowledge
# @return {String}
def evaluate(s, knowledge)
    hash = Hash.new
    hash.default = "?"
    knowledge.each do |x, y|
        hash[x] = y
    end

    ss, key, flag = "", "", false
    s.each_char.each { |c|
        if c == "("
            flag = true
        elsif c == ")"
            ss += hash[key]
            key = ""
            flag = false
        elsif flag
            key += c
        else
            ss += c
        end
    }
    ss
end

if __FILE__ == $PROGRAM_NAME
    p evaluate(s = "(name) is (age) years old", knowledge = [["name", "bob"], ["age", "two"]])
end


