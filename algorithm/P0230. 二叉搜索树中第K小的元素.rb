# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-21 22:03
# FilePath: P0230. 二叉搜索树中第K小的元素.rb
# Description:

load "common/leetcode.rb"

def dfs(root)
    return if root.nil?
    dfs(root.left)
    @values << root.val
    dfs(root.right)
end

# @param {TreeNode} root
# @param {Integer} k
# @return {Integer}
def kth_smallest(root, k)
    @values = []
    dfs(root)
    @values[k - 1]
end

if __FILE__ == $PROGRAM_NAME
    p kth_smallest(TreeNode.create("[5,3,6,2,4,null,null,1]"), 3)
end
