# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-31 23:38
# FilePath: P1974. 使用特殊打字机键入单词的最少时间.rb
# Description:

load "common/leetcode.rb"

# @param {String} word
# @return {Integer}
def min_time_to_type(word)
    cnt, pre = 0, "a"
    word.chars.each do |c|
        dis = (c.ord - pre.ord).abs
        cnt += [dis, 26 - dis].min + 1
        pre = c
    end
    cnt
end

if __FILE__ == $PROGRAM_NAME
    p min_time_to_type(word = "zjpc")
end
