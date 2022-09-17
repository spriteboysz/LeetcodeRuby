# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-17 22:23
# FilePath: P1619. 删除某些元素后的数组均值.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} arr
# @return {Float}
def trim_mean(arr)
    arr.sort!
    n = arr.length
    arr[n / 20...-n / 20].sum / (n * 0.9)

end

if __FILE__ == $PROGRAM_NAME
    p trim_mean(arr = [6, 2, 7, 5, 1, 2, 0, 3, 10, 2, 5, 0, 5, 5, 0, 8, 7, 6, 8, 0])
    p trim_mean([6, 0, 7, 0, 7, 5, 7, 8, 3, 4, 0, 7, 8, 1, 6, 8, 1, 1, 2, 4, 8, 1, 9, 5, 4, 3, 8, 5, 10, 8, 6, 6, 1, 0, 6, 10, 8, 2, 3, 4])
end
