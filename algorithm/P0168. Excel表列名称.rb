# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-25 10:20
# FilePath: P0168. Excel表列名称.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} column_number
# @return {String}
def convert_to_title(column_number)
    words = %w[A B C D E F G H I J K L M N O P Q R S T U V W X Y Z]
    ss = ""
    while column_number > 0
        div, mod = column_number.divmod(26)
        if mod == 0
            mod = 26
            div -= 1
        end
        ss = words[mod - 1] + ss
        column_number = div
    end
    ss
end

if __FILE__ == $PROGRAM_NAME
    p convert_to_title(column_number = 701)
end
