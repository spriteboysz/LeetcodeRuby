# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-09 21:34
# FilePath: 面试题 17.12. BiNode.rb
# Description:

load "common/leetcode.rb"

# @param {TreeNode} root
# @return {TreeNode}
def convert_bi_node(root)
    return nil if root.nil?
    @nodes = []
    dfs(root)
    @nodes.each_with_index do |node, i|
        next if i == 0
        @nodes[i - 1].left = nil
        @nodes[i - 1].right = node
    end
    @nodes[@nodes.length - 1].left = nil
    @nodes[@nodes.length - 1].right = nil
    @nodes[0]
end

def dfs(root)
    return if root.nil?
    dfs(root.left)
    @nodes << root
    dfs(root.right)
end

if __FILE__ == $PROGRAM_NAME
    p convert_bi_node(TreeNode.create("[4,2,5,1,3,null,6,0]")).to_s
end
