# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-18 22:07
# FilePath: P2120. 执行所有后缀指令.rb
# Description:

load "common/leetcode.rb"

# @param {Integer} n
# @param {Integer[]} start_pos
# @param {String} s
# @return {Integer[]}
def execute_instructions(n, start_pos, s)
    steps = []
    (0...s.length).each do |i|
        temp, cnt = start_pos.clone, 0
        (i...s.length).each do |j|
            if s[j] == "R"
                temp[1] += 1
            elsif s[j] == "L"
                temp[1] -= 1
            elsif s[j] == "U"
                temp[0] -= 1
            else
                temp[0] += 1
            end
            break if temp[0] < 0 || temp[0] >= n || temp[1] < 0 || temp[1] >= n
            cnt += 1
        end
        steps << cnt
    end
    steps
end

if __FILE__ == $PROGRAM_NAME
    p execute_instructions(3, [0, 1], "RRDDLU")
end


