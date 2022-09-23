# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-23 22:10
# FilePath: P0374. 猜数字大小.rb
# Description:

load "common/leetcode.rb"

# The guess API is already defined for you.
# @param num, your guess
# @return -1 if my number is lower, 1 if my number is higher, otherwise return 0
# def guess(num)

def guessNumber(n)
    left, right = 1, n
    while left <= right
        mid = (left + right) / 2
        if guess(mid) == 1
            left = mid + 1
        elsif guess(mid) == -1
            right = mid - 1
        else
            return mid
        end
    end
end

if __FILE__ == $PROGRAM_NAME
    p guessNumber(10)
end
