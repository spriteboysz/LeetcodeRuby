# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-18 16:08
# FilePath: P0383. 赎金信.rb
# Description:

load "common/leetcode.rb"

# @param {String} ransom_note
# @param {String} magazine
# @return {Boolean}
def can_construct(ransom_note, magazine)
    alphabet = Array.new(26, 0)
    magazine.each_char { |c| alphabet[c.ord - 97] += 1 }
    ransom_note.each_char { |c| alphabet[c.ord - 97] -= 1 }
    alphabet.min >= 0
end

if __FILE__ == $PROGRAM_NAME
    p can_construct(ransom_note = "aa", magazine = "ab")
    p can_construct(ransom_note = "aa", magazine = "aab")
end
