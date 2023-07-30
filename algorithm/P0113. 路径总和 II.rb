# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-07-30 16:32
# FilePath: P0113. 路径总和 II.rb
# Description:

load "common/leetcode.rb"

# @param {TreeNode} root
# @param {Integer} target_sum
# @return {Integer[][]}
def path_sum(root, target_sum)
    paths, path = [], []

    def dfs(root, target_sum, path, paths)
        return if root.nil?
        path << root.val
        target_sum -= root.val
        if root.left.nil? && root.right.nil? && target_sum == 0
            paths << path.clone
        end
        dfs(root.left, target_sum, path, paths)
        dfs(root.right, target_sum, path, paths)
        path.pop
    end

    dfs(root, target_sum, path, paths)
    paths
end

if __FILE__ == $PROGRAM_NAME
    p path_sum(TreeNode.create("[5,4,8,11,null,13,4,7,2,null,null,null,1]"), 22)
end


