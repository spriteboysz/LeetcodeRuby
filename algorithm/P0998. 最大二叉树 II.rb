# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-07 18:05
# FilePath: P0998. 最大二叉树 II.rb
# Description:

load "common/leetcode.rb"

# @param {TreeNode} root
# @param {Integer} val
# @return {TreeNode}
def insert_into_max_tree(root, val)
    return TreeNode.new(val, root) if root.nil? || root.val < val
    root.right = insert_into_max_tree(root.right, val)
    root
end

if __FILE__ == $PROGRAM_NAME
    p insert_into_max_tree(TreeNode.create("root = [5,2,4,null,1]"), val = 3).to_s
end
