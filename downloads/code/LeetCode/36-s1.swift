//
//  36-s1.swift
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
    // 第 i 行 / 列 / 块的第 j 个元素
    for iIndex in board.indices {
        var row = Set<Character>()
        var column = Set<Character>()
        var cube = Set<Character>()

        // 依次遍历行 / 列 / 块，存在重复时退出
        for jIndex in board.indices {
            let rowElement = board[iIndex][jIndex]
            if rowElement != "." {
                guard !row.contains(rowElement) else {
                    return false
                }

                row.insert(rowElement)
            }

            let columnElement = board[jIndex][iIndex]
            if columnElement != "." {
                guard !column.contains(columnElement) else {
                    return false
                }

                column.insert(columnElement)
            }

            let cubeElement = board[3 * (iIndex / 3) + jIndex / 3][3 * (iIndex % 3) + jIndex % 3]
            if cubeElement != "." {
                guard !cube.contains(cubeElement) else {
                    return false
                }

                cube.insert(cubeElement)
            }
        }
    }

    return true
}
