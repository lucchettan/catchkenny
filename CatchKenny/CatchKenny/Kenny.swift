//
//  Kenny.swift
//  CatchKenny
//
//  Created by Nicolas Lucchetta on 05/12/2019.
//  Copyright © 2019 Nicolas Lucchetta. All rights reserved.
//

import Foundation
import SwiftUI

struct Kenny: Identifiable {
    let id = UUID()
    let name: String
    var isShown: Bool
    let image: String
}

extension Kenny: Hashable, Equatable {
    static func all() -> [Kenny] {
        return [
            Kenny(name: "kenny0", isShown: false, image: "Kenny"),
            Kenny(name: "kenny1", isShown: false, image: "Kenny"),
            Kenny(name: "kenny2", isShown: false, image: "Kenny"),
            Kenny(name: "kenny3", isShown: false, image: "Kenny"),
            Kenny(name: "kenny4", isShown: false, image: "Kenny"),
            Kenny(name: "kenny5", isShown: false, image: "Kenny"),
            Kenny(name: "kenny6", isShown: false, image: "Kenny"),
            Kenny(name: "kenny7", isShown: false, image: "Kenny"),
            Kenny(name: "kenny8", isShown: false, image: "Kenny")
        ]
    }
}

