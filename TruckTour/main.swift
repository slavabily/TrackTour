//
//  main.swift
//  TruckTour
//
//  Created by slava bily on 13.12.2021.
//

import Foundation

func truckTour(petrolpumps: [[Int]]) -> Int {
    var diffs = [Int]()
    for i in 0..<petrolpumps.count {
        for j in 0..<petrolpumps[i].count - 1 {
            let d = petrolpumps[i][j] - petrolpumps[i][j + 1]
            diffs.append(d)
        }
    }
    print(diffs)
    return diffs.firstIndex(of: diffs.max()!)!
}

print(truckTour(petrolpumps: [[1,5], [10,3], [3,4]]))

