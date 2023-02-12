# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-12 13:45
# FilePath: P0299. 猜数字游戏.rb
# Description:

load "common/leetcode.rb"

# @param {String} secret
# @param {String} guess
# @return {String}
def get_hint(secret, guess)
    bulls, cows = 0, 0
    ss, gg = [0] * 10, [0] * 10
    secret.each_char { |c| ss[c.ord - '0'.ord] += 1 }
    guess.each_char { |c| gg[c.ord - '0'.ord] += 1 }
    (0..9).each do |i|
        cows += [ss[i], gg[i]].min
    end
    secret.chars.each_with_index do |c, i|
        bulls += 1 if c == guess[i]
    end
    "#{bulls}A#{cows - bulls}B"
end

if __FILE__ == $PROGRAM_NAME
    p get_hint(secret = "1807", guess = "7810")
end


