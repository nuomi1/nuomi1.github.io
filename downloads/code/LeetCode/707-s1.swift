//
//  707-s1.swift
//  LeetCode
//
//  Created by nuomi1 on 2021/5/19.
//

// Design Linked List
// https://leetcode.com/explore/learn/card/linked-list/209/singly-linked-list/1290/
// https://leetcode.com/problems/design-linked-list/

// 设计链表
// https://leetcode-cn.com/leetbook/read/linked-list/jy291/
// https://leetcode-cn.com/problems/design-linked-list/

class MyLinkedList {

    private class Node {
        let val: Int
        var next: Node?

        init(val: Int, next: Node?) {
            self.val = val
            self.next = next
        }
    }

    private var head: Node?

    init() {
        head = nil
    }

    func get(_ index: Int) -> Int {
        var index = index
        var temp = head

        while index > 0 {
            temp = temp?.next
            index -= 1
        }

        return temp?.val ?? -1
    }

    func addAtHead(_ val: Int) {
        head = Node(val: val, next: head)
    }

    func addAtTail(_ val: Int) {
        var tail = head

        while tail?.next != nil {
            tail = tail?.next
        }

        if tail == nil {
            head = Node(val: val, next: nil)
        } else {
            tail?.next = Node(val: val, next: nil)
        }
    }

    func addAtIndex(_ index: Int, _ val: Int) {
        var index = index
        var temp = head
        var prev: Node?

        while index > 0 {
            prev = temp
            temp = temp?.next
            index -= 1
        }

        if prev == nil {
            head = Node(val: val, next: temp)
        } else {
            prev?.next = Node(val: val, next: temp)
        }
    }

    func deleteAtIndex(_ index: Int) {
        var index = index
        var temp = head
        var prev: Node?

        while index > 0 {
            prev = temp
            temp = temp?.next
            index -= 1
        }

        if prev == nil {
            head = temp?.next
            temp?.next = nil
        } else {
            prev?.next = temp?.next
            temp?.next = nil
        }
    }
}
