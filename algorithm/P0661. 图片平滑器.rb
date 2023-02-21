# !/usr/bin/ruby -w
# coding=utf-8

# Author: Deean
# Date: 2023-02-21 22:51
# FilePath: P0661. 图片平滑器.rb
# Description:

load "common/leetcode.rb"

# @param {Integer[][]} img
# @return {Integer[][]}
def image_smoother(img)
    m, n = img.length, img[0].length
    smoother = Array.new(m) { Array.new(n, 0) }
    (0...n).each do |i|
        (0...m).each do |j|
            sum, num = 0, 0
            ([0, j - 1].max..[j + 1, m - 1].min).each do |x|
                ([0, i - 1].max..[i + 1, n - 1].min).each do |y|
                    sum += img[x][y]
                    num += 1
                end
            end
            smoother[j][i] = sum / num
        end
    end
    smoother
end

if __FILE__ == $PROGRAM_NAME
    p image_smoother([[100, 200, 100], [200, 50, 200], [100, 200, 100]])
    p image_smoother([[2,3,4],[5,6,7],[8,9,10],[11,12,13],[14,15,16]])
end


