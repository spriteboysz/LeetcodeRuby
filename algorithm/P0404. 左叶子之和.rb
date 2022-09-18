# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-18 15:57
# FilePath: P0404. 左叶子之和.rb
# Description:

load "common/leetcode.rb"

def dfs(root)
    return if root.nil?
    if root.left && root.left.left.nil? && root.left.right.nil?
        @values << root.left.val
    end
    dfs(root.left)
    dfs(root.right)
end

# @param {TreeNode} root
# @return {Integer}
def sum_of_left_leaves(root)
    @values = []
    dfs(root)
    @values.sum
end

if __FILE__ == $PROGRAM_NAME
    p sum_of_left_leaves(TreeNode.create("[3,9,20,null,null,15,7]"))
end
