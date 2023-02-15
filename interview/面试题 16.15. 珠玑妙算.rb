# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-09 20:30
# FilePath: 面试题 16.15. 珠玑妙算.rb
# Description:

load "common/leetcode.rb"

# @param {String} solution
# @param {String} guess
# @return {Integer[]}
def master_mind(solution, guess)
    hash1, hash2 = Hash.new(0), Hash.new(0)
    solution.each_char { |c| hash1[c] += 1 }
    guess.each_char { |c| hash2[c] += 1 }
    guess_right, guess_other = 0, 0
    solution.chars.each_with_index { |c, i|
        guess_right += 1 if c == guess[i]
    }
    "RYGB".each_char { |c|
        guess_other += [hash1[c], hash2[c]].min
    }
    [guess_right, guess_other - guess_right]
end

if __FILE__ == $PROGRAM_NAME
    p master_mind(solution="RGBY",guess="GGRR")
end


