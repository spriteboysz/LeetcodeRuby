# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-19 23:37
# FilePath: P0538. 把二叉搜索树转换为累加树.rb
# Description:

load "common/leetcode.rb"

def dfs(root)
    return if root.nil?
    dfs(root.right)
    @sum += root.val
    root.val = @sum
    dfs(root.left)
end

# @param {TreeNode} root
# @return {TreeNode}
def convert_bst(root)
    @sum = 0
    dfs(root)
    root
end

if __FILE__ == $PROGRAM_NAME
    p convert_bst(TreeNode.create("[3,2,4,1]")).to_s
end
