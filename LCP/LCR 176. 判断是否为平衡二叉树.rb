# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-06 16:49
# FilePath: LCR 176. 判断是否为平衡二叉树.rb
# Description:

load "common/leetcode.rb"

# @param {TreeNode} root
# @return {Boolean}
def is_balanced(root)
    def height(root)
        return 0 if root.nil?
        [height(root.left), height(root.right)].max + 1
    end

    return true if root.nil?
    (height(root.left) - height(root.right)).abs <= 1 and is_balanced(root.left) and is_balanced(root.right)
end

if __FILE__ == $PROGRAM_NAME
    p is_balanced(TreeNode.create("[3,9,20,null,null,15,7]"))
end


