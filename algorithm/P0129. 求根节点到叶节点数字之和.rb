# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-19 22:35
# FilePath: P0129. 求根节点到叶节点数字之和.rb
# Description:

load "common/leetcode.rb"

# @param {TreeNode} root
# @return {Integer}
def sum_numbers(root)
    return 0 if root.nil?

    def dfs(root, num)
        if root.left.nil? && root.right.nil?
            @sum += num
            return
        end
        dfs(root.left, num * 10 + root.left.val) if root.left
        dfs(root.right, num * 10 + root.right.val) if root.right
    end

    @sum = 0
    dfs(root, root.val)
    @sum
end

if __FILE__ == $PROGRAM_NAME
    p sum_numbers(TreeNode.create("[1,2,3]"))
end


