# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 16:52
# FilePath: P2037. 使每位学生都有座位的最少移动次数.rb
# Description: 

# @param {Integer[]} seats
# @param {Integer[]} students
# @return {Integer}
def min_moves_to_seat(seats, students)
    seats.sort!
    students.sort!
    cnt = 0
    seats.each_with_index { |seat, i| cnt += (seat - students[i]).abs }
    cnt
end

p min_moves_to_seat(seats = [4, 1, 5, 9], students = [1, 3, 2, 6])



