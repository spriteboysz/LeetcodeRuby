# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-22 22:50
# FilePath: P0028. 找出字符串中第一个匹配项的下标.rb
# Description:

load "common/leetcode.rb"

# @param {String} haystack
# @param {String} needle
# @return {Integer}
def str_str(haystack, needle)
    index = haystack.index(needle)
    index.nil? ? -1 : index
end

if __FILE__ == $PROGRAM_NAME
    p str_str(haystack = "leetcode", needle = "leeto")
end
