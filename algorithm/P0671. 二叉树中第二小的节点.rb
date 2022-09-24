# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-24 23:15
# FilePath: P0671. 二叉树中第二小的节点.rb
# Description:

load "common/leetcode.rb"

def dfs(root)
    return if root.nil?
    @values << root.val
    dfs(root.left)
    dfs(root.right)
end

# @param {TreeNode} root
# @return {Integer}
def find_second_minimum_value(root)
    @values = []
    dfs(root)
    @values.uniq!
    @values.length == 1 ? -1 : @values.min(2)[1]
end

if __FILE__ == $PROGRAM_NAME
    p find_second_minimum_value(TreeNode.create("[2,2,5,null,null,5,7]"))
    p find_second_minimum_value(TreeNode.create("[2,2,2]"))
end
