# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-25 17:34
# FilePath: P1736. 替换隐藏数字得到的最晚时间.rb
# Description:

load "common/leetcode.rb"

# @param {String} time
# @return {String}
def maximum_time(time)
    (23 * 60 + 59).downto(0).each do |min|
        div, mod = min.divmod(60)
        cur = "%02d" % div + ":" + "%02d" % mod
        flag = true
        cur.chars.zip(time.chars).each { |s, d|
            next if d == "?"
            if s != d
                flag = false
                break
            end
        }
        return cur if flag
    end
end

if __FILE__ == $PROGRAM_NAME
    p maximum_time(time = "1?:22")
end
