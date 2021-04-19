//
//  36-s2.swift
//  LeetCode
//
//  Created by nuomi1 on 2018/12/26.
//

// Valid Sudoku
// https://leetcode.com/explore/interview/card/top-interview-questions-easy/92/array/769/
// https://leetcode.com/problems/valid-sudoku/

// 有效的数独
// https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/x2f9gg/
// https://leetcode-cn.com/problems/valid-sudoku/

func isValidSudoku(_ board: [[Character]]) -> Bool {
    // 第 index 行 / 列 / 块的所有元素
    for index in board.indices {
        let row = board[index].filter { $0 != "." }
        guard row.count == Set(row).count else {
            return false
        }

        let column = board.map { $0[index] }.filter { $0 != "." }
        guard column.count == Set(column).count else {
            return false
        }

        let cubeIndex = (i: 3 * (index / 3), j: 3 * (index % 3))
        let cube = board[cubeIndex.i ..< cubeIndex.i + 3].flatMap { $0[cubeIndex.j ..< cubeIndex.j + 3] }.filter { $0 != "." }
        guard cube.count == Set(cube).count else {
            return false
        }
    }

    return true
}
