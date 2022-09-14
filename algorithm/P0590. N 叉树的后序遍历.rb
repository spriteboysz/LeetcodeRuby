# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-14 22:10
# FilePath: P0590. N 叉树的后序遍历.rb
# Description: 

# Definition for a Node.
class Node
    attr_accessor :val, :children

    def initialize(val)
        @val = val
        @children = []
    end
end

def dfs(root)
    return if root.nil?
    root.children.each { |node| dfs(node) }
    @values.append(root.val)
end

# @param {Node} root
# @return {List[int]}
def postorder(root)
    @values = []
    dfs(root)
    @values
end



