# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-28 22:20
# FilePath: LCP 67. 装饰树.rb
# Description:

load "common/leetcode.rb"

def expand_binary_tree(root)
    if root.left
        root.left = TreeNode.new(-1, expand_binary_tree(root.left), nil)
    end
    if root.right
        root.right = TreeNode.new(-1, nil, expand_binary_tree(root.right))
    end
    root
end

if __FILE__ == $PROGRAM_NAME
    root = TreeNode.create("[7,5,6]")
    p expand_binary_tree(root).to_s
end
