# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-06 16:48
# FilePath: LCR 175. 计算二叉树的深度.rb
# Description:

load "common/leetcode.rb"

# @param {TreeNode} root
# @return {Integer}
def calculate_depth(root)
    return 0 if root.nil?
    [calculate_depth(root.left), calculate_depth(root.right)].max + 1
end

if __FILE__ == $PROGRAM_NAME
    p calculate_depth(root = TreeNode.create("[1, 2, 2, 3, null, null, 5, 4, null, null, 4]"))
end


