# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 13:41
# FilePath: P2125. 银行中的激光束数量.rb
# Description: 

# @param {String[]} bank
# @return {Integer}
def number_of_beams(bank)
    cnt = 0
    beams = bank.map { |row| row.count('1') }.select { |row| row != 0 }
    beams.each_with_index { |beam, i| cnt += beam * beams[i + 1] if i < beams.length - 1 }
    cnt
end

p number_of_beams(%w[011001 000000 010100 001000])



