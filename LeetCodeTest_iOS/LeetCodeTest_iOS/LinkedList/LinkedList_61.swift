//
//  LinkedList_61.swift
//  LeetCodeTest_iOS
//
//  Created by sos1a2a3a on 2019/12/28.
//  Copyright © 2019 lijiarui. All rights reserved.
//

import UIKit
/// https://leetcode-cn.com/problems/rotate-list/
public class LinkedList_61: NSObject {
    
    public func rotateRight(_ head: ListNode?, _ k: Int) -> ListNode? {
        //利用快慢指针实现
        var temp = head
        
        var len : Int = 0
    
        while temp!.next != nil {
            temp = temp?.next!
            len += 1
        }
        var newk = k%len
        if newk == 0 {
            return head
        }
        var node = head
        temp = head!
         
        while newk>0 {
            newk -= 1
            temp = temp?.next!
        }
        
        while temp!.next != nil {
            node = node?.next
            temp = temp?.next!
        }
        
        print("temp:\(temp!.val) node:\(node!.val)")
        

        let res = node!.next
        node!.next = nil
        temp!.next = head
        return res
    }
    

    
    public func rotateRight2(_ head: ListNode?, _ k: Int) -> ListNode? {
        
        //    let newindex = len-k
        //
        //           var lastNode = newNode
        //           var newHNode  = newNode
        //           for _ in 0..<newindex {
        //
        //               lastNode = lastNode.next!
        //               newHNode = lastNode.next!
        //           }
        //
        //           let temp = newNode.next
        //
        //           newNode.next = newHNode
        //
        //           lastNode.next = nil
        //
        //
        //           newNode.next?.next?.next?.next = temp
        
        return nil
    }
 
}
