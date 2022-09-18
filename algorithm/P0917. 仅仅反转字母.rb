# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-18 17:48
# FilePath: P0917. 仅仅反转字母.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @return {String}
def reverse_only_letters(s)
    letter = ("a".."z").to_a + ("A".."Z").to_a
    letters = []
    s.each_char { |c| letters << c if letter.include?(c) }
    letters.reverse!
    j = 0
    (0...s.length).each do |i|
        if letter.include?(s[i])
            s[i] = letters[j]
            j += 1
        end
    end
    s
end

if __FILE__ == $PROGRAM_NAME
    p reverse_only_letters(s = "a-bC-dEf-ghIj")
    p reverse_only_letters(s = "Test1ng-Leet=code-Q!")
end
