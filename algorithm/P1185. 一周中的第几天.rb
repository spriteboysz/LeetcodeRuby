# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-24 23:54
# FilePath: P1185. 一周中的第几天.rb
# Description:

load "common/leetcode.rb"

def is_leap(year)
    (year % 4 == 0 && year % 100 != 0) || year % 400 == 0
end

def process(day, month, year)
    yy, mm, dd = year, month, day
    months = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]
    months[1] = 29 if is_leap(yy)
    days = dd
    (1971...yy).each { |y| days += (is_leap(y) ? 366 : 365) }
    (0...mm - 1).each { |m| days += months[m] }
    days
end

# @param {Integer} day
# @param {Integer} month
# @param {Integer} year
# @return {String}
def day_of_the_week(day, month, year)
    weekday = %w[Sunday Monday Tuesday Wednesday Thursday Friday Saturday]
    days = process(day, month, year)
    weekday[(days + 4) % 7]
end

if __FILE__ == $PROGRAM_NAME
    p day_of_the_week(day = 24, month = 9, year = 2022)
end
