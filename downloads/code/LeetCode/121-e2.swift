//
//  121-e2.swift
//  LeetCode
//
//  Created by nuomi1 on 2019/1/20.
//

// Best Time to Buy and Sell Stock
// https://leetcode.com/explore/interview/card/top-interview-questions-easy/97/dynamic-programming/572/
// https://leetcode.com/problems/best-time-to-buy-and-sell-stock/

// 买卖股票的最佳时机
// https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xn8fsh/
// https://leetcode-cn.com/problems/best-time-to-buy-and-sell-stock/

// MARK: One Pass

func maxProfit(_ prices: [Int]) -> Int {
    var profit = 0

    guard var minBuy = prices.first else {
        return profit
    }

    for price in prices {
        profit = max(profit, price - minBuy)
        minBuy = min(minBuy, price)
    }

    return profit
}
