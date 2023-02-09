# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-08 23:07
# FilePath: P0405. 数字转换为十六进制数.rb
# Description:

load 'common/leetcode.rb'

# @param {Integer} num
# @return {String}
def to_hex(num)
    (num&0xFFFFFFFF).to_s(16)
end

if __FILE__ == $PROGRAM_NAME
    p to_hex(26)
end


