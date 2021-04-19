//
//  122-e3.swift
//  LeetCode
//
//  Created by nuomi1 on 2018/12/18.
//

// Best Time to Buy and Sell Stock II
// https://leetcode.com/explore/interview/card/top-interview-questions-easy/92/array/564/
// https://leetcode.com/problems/best-time-to-buy-and-sell-stock-ii/

// 买卖股票的最佳时机 II
// https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/x2zsx1/
// https://leetcode-cn.com/problems/best-time-to-buy-and-sell-stock-ii/

// MARK: Simple One Pass

func maxProfit(_ prices: [Int]) -> Int {
    var profit = 0

    // 扫描下标，跳过初始下标
    for currentIndex in prices.indices.dropFirst() {
        // 当天与前一天的价格差
        // 价格差大于 0，盈利
        // 价格差小于 0，忽略
        let previousIndex = prices.index(before: currentIndex)
        profit += max(prices[currentIndex] - prices[previousIndex], 0)
    }

    return profit
}
