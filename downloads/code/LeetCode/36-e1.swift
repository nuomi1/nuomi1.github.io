//
//  36-e1.swift
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

// MARK: One iteration

func isValidSudoku(_ board: [[Character]]) -> Bool {
    var rows = [Set<Character>](repeating: [], count: board.count)
    var columns = [Set<Character>](repeating: [], count: board.count)
    var cubes = [Set<Character>](repeating: [], count: board.count)

    // 第 i 行第 j 列元素属于第 i 行 / 列 / 块
    for iIndex in board.indices {
        for jIndex in board.indices {
            let num = board[iIndex][jIndex]

            guard num != "." else {
                continue
            }

            let rowIndex = iIndex
            let columnIndex = jIndex
            let cubeIndex = 3 * (iIndex / 3) + (jIndex / 3)

            // 存在重复时退出
            guard !rows[rowIndex].contains(num), !columns[columnIndex].contains(num), !cubes[cubeIndex].contains(num) else {
                return false
            }

            rows[rowIndex].insert(num)
            columns[columnIndex].insert(num)
            cubes[cubeIndex].insert(num)
        }
    }

    return true
}
