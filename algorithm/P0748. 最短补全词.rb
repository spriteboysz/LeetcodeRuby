# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-24 21:30
# FilePath: P0748. 最短补全词.rb
# Description:

load "common/leetcode.rb"

# @param {String} license_plate
# @param {String[]} words
# @return {String}
def shortest_completing_word(license_plate, words)
    alphabet = Array.new(26, 0)
    license_plate.downcase.each_char do |c|
        alphabet[c.ord - 97] += 1 if c.ord >= 97 && c.ord <= "z".ord
    end
    words.sort_by { |word| [word.length, words.index(word)] }.each do |word|
        counts = Array.new(26, 0)
        word.each_char { |c| counts[c.ord - 97] += 1 }
        flag = true
        (0...26).each { |i|
            if alphabet[i] > counts[i]
                flag = false
                break
            end
        }
        return word if flag
    end
end

if __FILE__ == $PROGRAM_NAME
    p shortest_completing_word("1s3 PSt", %w[steps])
    p shortest_completing_word("1s3 456", words = %w[looks pest stew show])
end
