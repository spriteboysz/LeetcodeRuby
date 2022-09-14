# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-14 23:15
# FilePath: P1047. 删除字符串中的所有相邻重复项.rb
# Description: 

# @param {String} s
# @return {String}
def remove_duplicates(s)
    ss = []
    s.each_char { |c|
        if !ss.empty? && ss.last == c
            ss.pop
        else
            ss.push(c)
        end
    }
    ss.join
end

p remove_duplicates("abbaca")



