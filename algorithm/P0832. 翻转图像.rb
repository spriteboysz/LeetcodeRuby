# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2022-09-15 22:57
# FilePath: P0832. 翻转图像.rb
# Description:

load 'common/leetcode.rb'

# @param {Integer[][]} image
# @return {Integer[][]}
def flip_and_invert_image(image)
    n = image.length
    image.each(&:reverse!)
    (0...n).each do |i|
        (0...n).each do |j|
            image[i][j] = 1 - image[i][j]
        end
    end
    image
end

if __FILE__ == $PROGRAM_NAME
    image = [[1, 1, 0, 0], [1, 0, 0, 1], [0, 1, 1, 1], [1, 0, 1, 0]]
    p flip_and_invert_image(image)
end




