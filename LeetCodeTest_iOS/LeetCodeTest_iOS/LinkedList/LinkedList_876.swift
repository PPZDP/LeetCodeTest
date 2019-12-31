//
//  LinkedList_876.swift
//  LeetCodeTest_iOS
//
//  Created by sos1a2a3a on 2019/12/31.
//  Copyright © 2019 lijiarui. All rights reserved.
//

import UIKit
/// https://leetcode-cn.com/problems/middle-of-the-linked-list/
class LinkedList_876: NSObject {
    func middleNode(_ head: ListNode?) -> ListNode? {
        
        if head == nil {
            return head
        }
        
        var node = head
        var len = 1
        
        while node?.next != nil {
            len += 1
            node = node?.next
        }
        
        let index = len/2
        node = head
        if len%2==0 {
            //表示有俩个 取index,返回最后一个
            for _ in 1..<index {
                node = node?.next
            }
            return node?.next;
            
        }
        else{
            let newInde = index + len%2
            
            for _ in 1..<newInde {
                node = node?.next
            }
            return node;
            
        }
        
    }
    
    
    func middleNode2(_ head: ListNode?) -> ListNode? {
        var slow = head
        var quick = head
        while slow?.next != nil && quick?.next != nil {
            slow = slow?.next
            quick = quick?.next?.next
        }
        return slow
    }
}
