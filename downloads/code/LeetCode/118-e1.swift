//
//  118-e1.swift
//  LeetCode
//
//  Created by nuomi1 on 2019/2/1.
//

// Pascal's Triangle
// https://leetcode.com/explore/interview/card/top-interview-questions-easy/99/others/601/
// https://leetcode.com/problems/pascals-triangle/

// 杨辉三角
// https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xncfnv/
// https://leetcode-cn.com/problems/pascals-triangle/

// MARK: Dynamic Programming

func generate(_ numRows: Int) -> [[Int]] {
    var result: [[Int]] = Array(repeating: [], count: numRows)

    for rowIndex in 0 ..< numRows {
        for columnIndex in 0 ..< numRows {
            if columnIndex - rowIndex > 0 {
                continue
            }

            let lhs = result[safe: rowIndex - 1]?[safe: columnIndex - 1] ?? 0
            let rhs = result[safe: rowIndex - 1]?[safe: columnIndex] ?? 0

            result[rowIndex].append(max(lhs + rhs, 1))
        }
    }

    return result
}

extension Array {
    subscript(safe index: Index) -> Element? {
        indices.contains(index) ? self[index] : nil
    }
}
