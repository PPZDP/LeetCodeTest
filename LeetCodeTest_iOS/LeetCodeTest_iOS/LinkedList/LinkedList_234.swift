//
//  LinkedList_234.swift
//  LeetCodeTest_iOS
//
//  Created by sos1a2a3a on 2020/1/2.
//  Copyright © 2020 lijiarui. All rights reserved.
//

import UIKit
/// https://leetcode-cn.com/problems/palindrome-linked-list/
class LinkedList_234: NSObject {
    
    func isPalindrome(_ head: ListNode?) -> Bool {
        //   1->2->2->1
        
        //1-> |2| ->2 ->1
        //1.通过快慢指针 找到中间节点
        let middleNode = findMiddle(head)
        //1->2  2<-1
        //2.翻转中间以后的节点
        var newNode = reverse(middleNode?.next)
        
        var nowHead = head

        //3.遍历 newNode 和 head 每一个元素 对比
        while newNode != nil {
            
            if newNode?.val == nowHead?.val {
//                 print("val:\(newNode!.val) and \(nowHead!.val)")
                newNode = newNode?.next
                nowHead = nowHead?.next
            }
            else {
                return false
            }
        }

        return true
    }
    
    
    func findMiddle(_ head: ListNode?) -> ListNode? {
        
        var slow = head
        var fast = head?.next
        
        while fast?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }
        
        return slow
    }
    
    
    func reverse(_ head: ListNode?) -> ListNode? {
        
        var prev = head
        var newNode : ListNode?
        
        while prev != nil {
            
            let tempNode = prev?.next
            
            prev?.next = newNode
            
            newNode = prev
            
            prev = tempNode
        }
        
        
        
        return newNode
    }
    
    
}
