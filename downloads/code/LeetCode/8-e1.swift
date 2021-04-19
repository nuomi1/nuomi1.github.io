//
//  8-e1.swift
//  LeetCode
//
//  Created by nuomi1 on 2019/1/2.
//

// String to Integer (atoi)
// https://leetcode.com/explore/interview/card/top-interview-questions-easy/127/strings/884/
// https://leetcode.com/problems/string-to-integer-atoi/

// 字符串转换整数 (atoi)
// https://leetcode-cn.com/leetbook/read/top-interview-questions-easy/xnoilh/
// https://leetcode-cn.com/problems/string-to-integer-atoi/

// MARK: Scan from left to right

func myAtoi(_ str: String) -> Int {
    var sign: Int32 = 1
    var overflow = (false, false)
    var result: Int32 = 0

    var index = str.startIndex

    // 跳过前导空格
    while index != str.endIndex, str[index].isWhitespace {
        str.formIndex(after: &index)
    }

    // 识别正负号
    if index != str.endIndex, ["+", "-"].contains(str[index]) {
        sign = str[index] == "+" ? 1 : -1

        str.formIndex(after: &index)
    }

    // 识别数字并累进
    while index != str.endIndex, str[index].isNumber {
        (result, overflow.0) = result.multipliedReportingOverflow(by: 10)
        (result, overflow.1) = result.addingReportingOverflow(sign * Int32(str[index].asciiValue! - ("0" as Character).asciiValue!))

        guard !overflow.0, !overflow.1 else {
            return sign == 1 ? Int(Int32.max) : Int(Int32.min)
        }

        str.formIndex(after: &index)
    }

    return Int(result)
}
