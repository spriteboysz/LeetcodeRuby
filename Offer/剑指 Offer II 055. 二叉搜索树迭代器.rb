# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-10-07 21:20
# FilePath: 剑指 Offer II 055. 二叉搜索树迭代器.rb
# Description:

load "common/leetcode.rb"

class BSTIterator

    #     :type root: TreeNode
    def initialize(root)
        @values, @index = [], 0
        dfs(root)
    end

    def dfs(root)
        return if root.nil?
        dfs(root.left)
        @values << root.val
        dfs(root.right)
    end

    #     :retype: Integer
    def next
        @index += 1
        @values[@index - 1]
    end

    #     :retype: Boolean
    def has_next
        @index < @values.length
    end

end

if __FILE__ == $PROGRAM_NAME
    bst_iterator = BSTIterator.new(TreeNode.create("[7,3,15,null,null,9,20]"))
    p bst_iterator.next # 返回 3
    p bst_iterator.next # 返回 7
    p bst_iterator.has_next # 返回 True
    p bst_iterator.next # 返回 9
    p bst_iterator.has_next # 返回 True
    p bst_iterator.next # 返回 15
    p bst_iterator.has_next # 返回 True
    p bst_iterator.next # 返回 20
    p bst_iterator.has_next # 返回 False
end
