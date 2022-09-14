# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-14 22:06
# FilePath: P0589.rb
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
    @values.append(root.val)
    root.children.each { |node| dfs(node) }
end

# @param {Node} root
# @return {List[int]}
def preorder(root)
    @values = []
    dfs(root)
    @values
end



