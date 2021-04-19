//
//  48-e1.swift
//  LeetCode
//
//  Created by nuomi1 on 2018/12/27.
//

// Rotate Image
// https://leetcode.com/explore/interview/card/top-interview-questions-easy/92/array/770/
// https://leetcode.com/problems/rotate-image/

// 旋转图像
// https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xnhhkv/
// https://leetcode-cn.com/problems/rotate-image/

// MARK: Rotate Groups of Four Cells

func rotate(_ matrix: inout [[Int]]) {
    let n = matrix.indices.last!

    // 第 i 圈第 j 次交换
    for i in matrix.indices.prefix(matrix.endIndex / 2) {
        for j in matrix.indices.dropLast(i + 1).dropFirst(i) {
            // 左上
            let topLeft = (i: i, j: j)
            // 右上
            let topRight = (i: j, j: n - i)
            // 右下
            let bottomRight = (i: n - i, j: n - j)
            // 左下
            let bottomLeft = (i: n - j, j: i)

            (
                matrix[topLeft.i][topLeft.j],
                matrix[topRight.i][topRight.j],
                matrix[bottomRight.i][bottomRight.j],
                matrix[bottomLeft.i][bottomLeft.j]
            )
                =
                (
                    matrix[bottomLeft.i][bottomLeft.j],
                    matrix[topLeft.i][topLeft.j],
                    matrix[topRight.i][topRight.j],
                    matrix[bottomRight.i][bottomRight.j]
                )
        }
    }
}
