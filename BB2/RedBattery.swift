//
//  RedBattery.swift
//  BB2
//
//  Created by Rob Norback on 2/20/17.
//  Copyright © 2017 Norback Solutions, LLC. All rights reserved.
//

import Foundation

class RedBattery: Puzzle {
    var puzzleId: PuzzleId = .redBattery
    var isSolved: Bool {
        return UserDefaults.standard.bool(forKey: puzzleId.rawValue)
    }
    
    func checkForSuccess(value isBatterModeChanged:Any?) {
        guard let isBatterModeChanged = isBatterModeChanged as? Bool else {
            print("\(type(of:self)): Not passed a valid boolean")
            return
        }
        
        if isBatterModeChanged {
            NotificationCenter.default.post(
                name: Notification.Name(puzzleId.rawValue),
                object: nil
            )
            UserDefaults.standard.set(true, forKey: puzzleId.rawValue)
        }
    }
}