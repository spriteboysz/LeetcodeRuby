# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-07 19:54
# FilePath: P1305. 两棵二叉搜索树中的所有元素.rb
# Description:

load "common/leetcode.rb"

# @param {TreeNode} root1
# @param {TreeNode} root2
# @return {Integer[]}
def get_all_elements(root1, root2)
    @values = []
    dfs(root1)
    dfs(root2)
    @values.sort
end

def dfs(root)
    return if root.nil?
    dfs(root.left)
    @values << root.val
    dfs(root.right)
end

if __FILE__ == $PROGRAM_NAME
    p get_all_elements(root1 = TreeNode.create("[2,1,4]"), root2 = TreeNode.create("[1,0,3]"))
end
