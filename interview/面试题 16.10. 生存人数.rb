# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-15 12:29
# FilePath: 面试题 16.10. 生存人数.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} birth
# @param {Integer[]} death
# @return {Integer}
def max_alive_year(birth, death)
    hash = Hash.new(0)
    birth.each_index { |i|
        (birth[i]..death[i]).each { |j|
            hash[j] += 1
        }
    }
    hash.max_by { |k, v| [v, -k] }[0]
end

if __FILE__ == $PROGRAM_NAME
    p max_alive_year([1900, 1901, 1950], [1948, 1951, 2000])
    p max_alive_year([1971, 1940, 1968, 1957, 1953, 1921, 1950, 1925, 1935, 1919, 1933, 1922, 1992, 1910, 1946, 1918, 1932, 1932],
                     [1990, 1998, 1981, 1964, 1970, 1989, 1989, 1949, 1963, 1946, 1972, 1935, 1999, 1979, 1993, 1943, 1933, 1944])
end


