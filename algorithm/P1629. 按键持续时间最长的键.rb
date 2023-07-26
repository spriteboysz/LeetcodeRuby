# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-07-26 21:30
# FilePath: P1629. 按键持续时间最长的键.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} release_times
# @param {String} keys_pressed
# @return {Character}
def slowest_key(release_times, keys_pressed)
    release_times.unshift(0)
    maximum, target = 0, ""
    keys_pressed.chars.each_with_index { |key, i|
        if release_times[i + 1] - release_times[i] > maximum
            maximum = release_times[i + 1] - release_times[i]
            target = key
        elsif release_times[i + 1] - release_times[i] == maximum && key > target
            target = key
        end
    }
    target
end

if __FILE__ == $PROGRAM_NAME
    p slowest_key(release_times = [9, 29, 49, 50], keys_pressed = "cbcd")
end


