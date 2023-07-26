# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-07-26 21:48
# FilePath: P1496. 判断路径是否相交.rb
# Description:

load "common/leetcode.rb"
require "set"

# @param {String} path
# @return {Boolean}
def is_path_crossing(path)
    set = Set.new
    set.add("0#0")
    x, y = 0, 0
    path.each_char { |c|
        case c
        when 'N'
            y += 1
        when 'S'
            y -= 1
        when 'E'
            x += 1
        when 'W'
            x -= 1
        else
            # type code here
        end
        point = "#{x}##{y}"
        return true if set.include?(point)
        set.add(point)
    }
    false
end

if __FILE__ == $PROGRAM_NAME
    p is_path_crossing(path = "NESWW")
end


