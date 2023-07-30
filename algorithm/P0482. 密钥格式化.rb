# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-07-30 19:19
# FilePath: P0482. 密钥格式化.rb
# Description:

load "common/leetcode.rb"

# @param {String} s
# @param {Integer} k
# @return {String}
def license_key_formatting(s, k)
    ss, cnt = "", 0
    (s.size - 1).step(0, -1).each { |i|
        if s[i] != '-'
            ss += s[i].upcase
            cnt += 1
            ss += '-' if cnt % k == 0
        end
    }
    ss = ss[0...-1] if ss.size > 0 && ss[-1] == '-'
    ss.reverse
end

if __FILE__ == $PROGRAM_NAME
    p license_key_formatting(s = "5F3Z-2e-9-w", k = 4)
end


