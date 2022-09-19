# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-19 23:39
# FilePath: P1038. 从二叉搜索树到更大和树.rb
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
def bst_to_gst(root)
    @sum = 0
    dfs(root)
    root
end

if __FILE__ == $PROGRAM_NAME
    p bst_to_gst(TreeNode.create("[0,null,1]")).to_s
end
