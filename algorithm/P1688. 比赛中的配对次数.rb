# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 13:08
# FilePath: P1688. 比赛中的配对次数.rb
# Description: 

# @param {Integer} n
# @return {Integer}
def number_of_matches(n)
    cnt = 0
    while n > 1
        if n % 2 == 0
            cnt += n / 2
            n /= 2
        else
            cnt += (n - 1) / 2
            n = ((n - 1) / 2) + 1
        end
    end
    cnt
end

p number_of_matches(14)



