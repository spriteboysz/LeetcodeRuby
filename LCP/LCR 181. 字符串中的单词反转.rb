# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-06 17:06
# FilePath: LCR 181. 字符串中的单词反转.rb
# Description:

load "common/leetcode.rb"

# @param {String} message
# @return {String}
def reverse_message(message)
    message.strip.split.reverse.join(' ')
end

if __FILE__ == $PROGRAM_NAME
    p reverse_message(message = "the sky is blue")
end


