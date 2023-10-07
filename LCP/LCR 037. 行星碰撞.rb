# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-05 15:44
# FilePath: LCR 037. 行星碰撞.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[]} asteroids
# @return {Integer[]}
def asteroid_collision(asteroids)
    stack = []
    asteroids.each do |asteroid|
        while !stack.empty? && stack.last > 0 && stack.last < -asteroid
            stack.pop
        end
        if stack.empty? || stack.last < 0 || asteroid > 0
            stack << asteroid
        elsif -asteroid == stack.last
            stack.pop
        end
    end
    stack
end

if __FILE__ == $PROGRAM_NAME
    p asteroid_collision(asteroids = [5, 10, -5])
end


