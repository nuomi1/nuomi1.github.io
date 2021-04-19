//
//  204-e1.swift
//  LeetCode
//
//  Created by nuomi1 on 2019/1/26.
//

// Count Primes
// https://leetcode.com/explore/interview/card/top-interview-questions-easy/102/math/744/
// https://leetcode.com/problems/count-primes/

// 计数质数
// https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xnzlu6/
// https://leetcode-cn.com/problems/count-primes/

// MARK: Sieve of Eratosthenes

func countPrimes(_ n: Int) -> Int {
    var primes = [Bool?](repeating: nil, count: n + 1)
    var count = 0

    for i in stride(from: 2, to: n, by: 1) where primes[i] == nil {
        primes[i] = true
        count += 1
        for j in stride(from: 2 * i, through: n, by: i) {
            primes[j] = false
        }
    }

    return count
}
