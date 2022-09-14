# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-14 21:37
# FilePath: 剑指 Offer 54. 二叉搜索树的第k大节点.rb
# Description: 

load 'common/TreeNode.rb'

def dfs(root)
    return if root.nil?
    dfs(root.left)
    @values.append(root.val)
    dfs(root.right)
end

# @param {TreeNode} root
# @param {Integer} k
# @return {Integer}
def kth_largest(root, k)
    @values = []
    dfs(root)
    @values[-k]
end

p kth_largest(TreeNode.create("[5,3,6,2,4,null,null,1]"), 3)



