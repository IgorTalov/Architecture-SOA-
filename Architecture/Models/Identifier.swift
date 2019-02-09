//
//  Identifier.swift
//  Architecture
//
//  Created by Игорь Талов on 09/02/2019.
//  Copyright © 2019 IgorTalov. All rights reserved.
//

import UIKit

class Identifier {
    var stringValue: String

    init() {
        self.stringValue = UUID().uuidString
    }
}
