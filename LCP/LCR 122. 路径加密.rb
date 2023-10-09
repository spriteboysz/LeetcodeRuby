# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-06 10:49
# FilePath: LCR 122. 路径加密.rb
# Description:

load "common/leetcode.rb"

# @param {String} path
# @return {String}
def path_encryption(path)
    path.gsub(".", " ")
end

if __FILE__ == $PROGRAM_NAME
    p path_encryption(path = "a.aef.qerf.bb")
end


