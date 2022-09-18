# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-18 16:12
# FilePath: P2129. 将标题首字母大写.rb
# Description:

load "common/leetcode.rb"

# @param {String} title
# @return {String}
def capitalize_title(title)
    words = title.downcase.split
    words.map { |word| word.length >= 3 ? word.capitalize : word }.join(" ")
end

if __FILE__ == $PROGRAM_NAME
    p capitalize_title("First leTTeR of EACH Word")
end
