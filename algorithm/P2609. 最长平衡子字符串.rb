# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-05-02 17:55
# FilePath: P2609. 最长平衡子字符串.rb
# Description:

load "common/leetcode.rb"
# @param {String} s
# @return {Integer}
def find_the_longest_balanced_substring(s)
    (25..0).step(-1).each do |i|
        if s.include?('0' * i + '1' * i)
            return i * 2
        end
    end
end

if __FILE__ == $PROGRAM_NAME
    p find_the_longest_balanced_substring("0111")
end


