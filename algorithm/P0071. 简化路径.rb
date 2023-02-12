# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-12 11:56
# FilePath: P0071. 简化路径.rb
# Description:

load "common/leetcode.rb"

# @param {String} path
# @return {String}
def simplify_path(path)
    paths = []
    path.split("/").each do |p|
        if p == ".." && !paths.empty?
            paths.pop
        elsif !"..".include?(p)
            paths << p
        end
    end
    paths.delete("")
    "/" + paths.join("/")
end

if __FILE__ == $PROGRAM_NAME
    p simplify_path("/a/./b/../../c/")
    p simplify_path("/a//b////c/d//././/..")
end


