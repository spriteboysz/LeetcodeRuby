# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2024-01-17 22:35
# FilePath: P2833. 距离原点最远的点.rb
# Description:

load "common/leetcode.rb"

# @param {String} moves
# @return {Integer}
def furthest_distance_from_origin(moves)
    (moves.count('R') - moves.count('L')).abs + moves.count('_')
end

if __FILE__ == $PROGRAM_NAME
    p furthest_distance_from_origin(moves = "_R__LL_")
end


