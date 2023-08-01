# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-07-30 16:17
# FilePath: P0112. 路径总和.rb
# Description:

load "common/leetcode.rb"

# @param {TreeNode} root
# @param {Integer} target_sum
# @return {Boolean}
def has_path_sum(root, target_sum)
    def dfs(root, s, target_sum)
        return false if root.nil?
        unless root.left || root.right
            return target_sum == s + root.val
        end
        dfs(root.left, s + root.val, target_sum) || dfs(root.right, s + root.val, target_sum)
    end

    dfs(root, 0, target_sum)
end

if __FILE__ == $PROGRAM_NAME
    p has_path_sum(TreeNode.create("[5,4,8,11,null,13,4,7,2,null,null,null,1]"), 22)
end


