# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-10-05 22:33
# FilePath: LCR 056. 两数之和 IV - 输入二叉搜索树.rb
# Description:

load "common/leetcode.rb"

# @param {TreeNode} root
# @param {Integer} k
# @return {Boolean}
def find_target(root, k)
    @values = []

    def dfs(root)
        return if root.nil?
        dfs(root.left)
        @values << root.val
        dfs(root.right)
    end

    dfs(root)
    left, right = 0, @values.size - 1
    while left < right
        if @values[left] + @values[right] < k
            left += 1
        elsif @values[left] + @values[right] > k
            right -= 1
        else
            return true
        end
    end
    false
end

if __FILE__ == $PROGRAM_NAME
    p find_target(TreeNode.create("[8,6,10,5,7,9,11]"), 12)
end


