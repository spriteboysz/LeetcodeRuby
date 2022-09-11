# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 14:02
# FilePath: P1678. 设计 Goal 解析器.rb
# Description: 

# @param {String} command
# @return {String}
def interpret(command)
    command.gsub("()", "o").gsub("(al)", "al")
end

p interpret(command = "G()()()()(al)")
p interpret(command = "(al)G(al)()()G")



