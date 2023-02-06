# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023/2/5 22:58
# FilePath: P2409. 统计共同度过的日子数.rb
# Description:

load "common/leetcode.rb"

# @param {String} arrive_alice
# @param {String} leave_alice
# @param {String} arrive_bob
# @param {String} leave_bob
# @return {Integer}
def count_days_together(arrive_alice, leave_alice, arrive_bob, leave_bob)
    days = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    cnt = 0
    (1..12).each do |i|
        month = format("%02d", i)
        (1..days[i - 1]).each do |j|
            day = format("%02d", j)
            date = "#{month}-#{day}"
            cnt += 1 if arrive_alice <= date && date <= leave_alice && arrive_bob <= date && date <= leave_bob
        end
    end
    cnt
end

if __FILE__ == $PROGRAM_NAME
    p count_days_together("08-15", "08-18", "08-16", "08-19")
end


