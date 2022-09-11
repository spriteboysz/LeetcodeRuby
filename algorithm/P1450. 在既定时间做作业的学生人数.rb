# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 16:31
# FilePath: P1450. 在既定时间做作业的学生人数.rb
# Description: 

# @param {Integer[]} start_time
# @param {Integer[]} end_time
# @param {Integer} query_time
# @return {Integer}
def busy_student(start_time, end_time, query_time)
    cnt = 0
    start_time.each_with_index { |s, i| cnt += 1 if s <= query_time && end_time[i] >= query_time }
    cnt
end

p busy_student(start_time = [9, 8, 7, 6, 5, 4, 3, 2, 1],
               end_time = [10, 10, 10, 10, 10, 10, 10, 10, 10],
               query_time = 5)


