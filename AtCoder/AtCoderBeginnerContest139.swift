//
//  Tenki.swift
//  AtCoder
//
//  Created by Asakura Shinsuke on 2019/09/04.
//  Copyright © 2019 asashin227. All rights reserved.
//

import Cocoa

struct AtCoderBeginnerContest139 {
    static func tenki() {
        print("start tenki: ")
        let s = Array(readLine()!.utf8CString) // 予想
        let t = Array(readLine()!.utf8CString) // 結果
        
        var o = 0
        for i in 0..<3 {
            if ( s[i] == t[i] ) {
                o += 1
            }
        }
        print( o )
    }
    
    static func powerSocket() {
        print("start powerSocket: ")
        let arr = String(readLine()!).split(separator: " " ).map { Int(String($0))! }
        let a = arr.first ?? 0
        let b = arr.last ?? 0
        var socketNum = a
        var count = 1

        while socketNum < b {
            socketNum += a - 1
            count += 1
        }
        
        if b == 1 {
            count = 0
        }
        
        print(count)
    }
    
    static func lower() {
        print("start lower: ")
        let n = Int(readLine()!)!
        let hArr = String(readLine()!).split(separator: " " ).map { Int(String($0))! }
        var resArr = [Int]()
        for i in 0..<n {
            var startNum = hArr[i]
            var res = 0
            for j in i+1..<n {
                if startNum >= hArr[j] {
                    res += 1
                } else {
                    break
                }
                startNum = hArr[j]
            }
            resArr.append(res)
        }
        let result = resArr.reduce(0) { res, num in
            return max(res, num)
        }
        print(result)
    }
}
