# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-06 16:28
# FilePath: LCR 164. 破解闯关密码.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} password
# @return {String}
def crack_password(password)
    password.map(&:to_s).sort { |x, y| x + y < y + x ? -1 : 1 }.join
end


if __FILE__ == $PROGRAM_NAME
    p crack_password(password = [0, 3, 30, 34, 5, 9])
end


