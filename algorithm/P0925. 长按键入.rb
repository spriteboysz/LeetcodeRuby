# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-12 22:48
# FilePath: P0925. 长按键入.rb
# Description:

load "common/leetcode.rb"

# @param {String} name
# @param {String} typed
# @return {Boolean}
def is_long_pressed_name(name, typed)
    i, j, m, n = 0, 0, name.length, typed.length
    while j < n
        if i < m and j < n and name[i] == typed[j]
            i, j = i + 1, j + 1
        elsif j >= 1 and typed[j] == typed[j - 1]
            j += 1
        else
            return false
        end
    end
    i == m
end

if __FILE__ == $PROGRAM_NAME
    p is_long_pressed_name(name = "alex", typed = "aaleex")
end


