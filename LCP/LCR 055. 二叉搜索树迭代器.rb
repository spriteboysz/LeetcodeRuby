# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-05 22:16
# FilePath: LCR 055. 二叉搜索树迭代器.rb
# Description:

load "common/leetcode.rb"

class BSTIterator
    @values
=begin
    :type root: TreeNode
=end
    def initialize(root)
        @values = []

        def dfs(root)
            return if root.nil?
            dfs(root.left)
            @values << root.val
            dfs(root.right)
        end

        dfs(root)
    end

=begin
    :rtype: Integer
=end
    def next
        @values.shift unless @values.empty?
    end

=begin
    :rtype: Boolean
=end
    def has_next
        !@values.empty?
    end

end

if __FILE__ == $PROGRAM_NAME
    obj = BSTIterator.new(root = TreeNode.create("[7, 3, 15, null, null, 9, 20]"))
    p obj.next
    p obj.next
    p obj.has_next
    p obj.next
    p obj.has_next
    p obj.next
    p obj.has_next
    p obj.next
    p obj.has_next
end


