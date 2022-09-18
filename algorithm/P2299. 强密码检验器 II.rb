# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-18 11:01
# FilePath: P2299. 强密码检验器 II.rb
# Description:

load "common/leetcode.rb"

# @param {String} password
# @return {Boolean}
def strong_password_checker_ii(password)
    return false if password.length < 8
    flag, characters = 0, password.chars
    characters.each_with_index do |c, i|
        return false if i > 0 && characters[i - 1] == characters[i]
        flag |= 1 if ("a".."z").cover?(c)
        flag |= 2 if ("A".."Z").cover?(c)
        flag |= 4 if ("0".."9").cover?(c)
        flag |= 8 if "!@#$%^&*()-+".include?(c)
    end
    flag == 15
end

if __FILE__ == $PROGRAM_NAME
    p strong_password_checker_ii(password = "Me+You--IsMyDream")
    p strong_password_checker_ii(password = "1aB!")
end
