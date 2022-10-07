# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-07 14:17
# FilePath: P0114. 二叉树展开为链表.rb
# Description:

load "common/leetcode.rb"

# @param {TreeNode} root
# @return {Void} Do not return anything, modify root in-place instead.
def flatten(root)
    return nil if root.nil?
    @nodes = []
    dfs(root)
    @nodes.each_index do |i|
        next if i == 0
        @nodes[i - 1].left = nil
        @nodes[i - 1].right = @nodes[i]
    end
    @nodes[@nodes.length - 1].left = nil
    @nodes[@nodes.length - 1].right = nil
    @nodes[0]
    p @nodes[0].to_s
end

def dfs(root)
    return nil if root.nil?
    @nodes << root
    dfs(root.left)
    dfs(root.right)
end

if __FILE__ == $PROGRAM_NAME
    flatten(TreeNode.create("[1,2,5,3,4,null,6]"))
end
