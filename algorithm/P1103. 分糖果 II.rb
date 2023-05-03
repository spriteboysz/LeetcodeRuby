# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-05-02 23:33
# FilePath: P1103. 分糖果 II.rb
# Description:

load "common/leetcode.rb"
# @param {Integer} candies
# @param {Integer} num_people
# @return {Integer[]}
def distribute_candies(candies, num_people)
    distribute = Array.new(num_people, 0)
    candy, pos = 1, 0
    while candies > 0
        distribute[pos] += [candy, candies].min
        candies -= candy
        pos += 1
        candy += 1
        pos = 0 if pos == num_people
    end
    distribute
end

if __FILE__ == $PROGRAM_NAME
    p distribute_candies(candies = 7, num_people = 4)
end


