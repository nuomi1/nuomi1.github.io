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

    for prime in stride(from: 2, to: n, by: 1) where primes[prime] == nil {
        primes[prime] = true
        count += 1
        for composite in stride(from: 2 * prime, through: n, by: prime) {
            primes[composite] = false
        }
    }

    return count
}
