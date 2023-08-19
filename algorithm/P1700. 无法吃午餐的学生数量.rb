# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-08-18 23:30
# FilePath: P1700. 无法吃午餐的学生数量.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} students
# @param {Integer[]} sandwiches
# @return {Integer}
def count_students(students, sandwiches)
    hash = Hash.new(0)
    students.each { |stu| hash[stu] += 1 }
    sandwiches.each { |sandwich|
        return hash[sandwich ^ 1] if hash[sandwich] == 0
        hash[sandwich] -= 1
    }
    0
end

if __FILE__ == $PROGRAM_NAME
    p count_students(students = [1, 1, 0, 0], sandwiches = [0, 1, 0, 1])
end


