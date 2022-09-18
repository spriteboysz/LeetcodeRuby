# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-18 21:26
# FilePath: P0110. 平衡二叉树.rb
# Description:

load "common/leetcode.rb"

def dfs(root)
    return 0 if root.nil?
    [dfs(root.left), dfs(root.right)].max + 1
end

# @param {TreeNode} root
# @return {Boolean}
def is_balanced(root)
    return true if root.nil?
    (dfs(root.left) - dfs(root.right)).abs <= 1 && is_balanced(root.left) && is_balanced(root.right)
end

if __FILE__ == $PROGRAM_NAME
    p is_balanced(TreeNode.create("[1,2,2,3,3,null,null,4,4]"))
end
