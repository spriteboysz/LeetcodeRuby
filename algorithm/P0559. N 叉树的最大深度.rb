# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-14 21:49
# FilePath: P0559. N 叉树的最大深度.rb
# Description: 

# Definition for a Node.
class Node
    attr_accessor :val, :children

    def initialize(val)
        @val = val
        @children = []
    end
end

# @param {Node} root
# @return {int}
def maxDepth(root)
    return 0 if root.nil?
    if root.children.empty?
        1
    else
        root.children.map { |node| maxDepth(node) }.max + 1
    end
end





