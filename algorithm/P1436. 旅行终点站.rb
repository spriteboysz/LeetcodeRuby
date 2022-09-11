# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-11 20:38
# FilePath: P1436. 旅行终点站.rb
# Description: 

# @param {String[][]} paths
# @return {String}
def dest_city(paths)
    src, dst = [], []
    paths.each { |path|
        src.append(path[0])
        dst.append(path[1])
    }
    dst.each { |st| return st unless src.include?(st) }
end

p dest_city(paths = [%w[B C], %w[D B], %w[C A]])



