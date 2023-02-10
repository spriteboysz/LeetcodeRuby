# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-09 22:05
# FilePath: P1013. 将数组分成和相等的三个部分.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} arr
# @return {Boolean}
def can_three_parts_equal_sum(arr)
    sum = arr.sum
    return false if sum % 3 != 0
    res, tmp, cnt = sum / 3, 0, 0
    arr.each do |num|
        return true if cnt == 2
        tmp += num
        if res == tmp
            cnt += 1
            tmp = 0
        end
    end
    false

end

if __FILE__ == $PROGRAM_NAME
    p can_three_parts_equal_sum(arr = [0, 2, 1, -6, 6, -7, 9, 1, 2, 0, 1])
end


