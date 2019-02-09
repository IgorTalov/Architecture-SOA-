//
//  Message.swift
//  Architecture
//
//  Created by Игорь Талов on 09/02/2019.
//  Copyright © 2019 IgorTalov. All rights reserved.
//

import UIKit

struct Message {

    var id: String
    var text: String = ""

    init() {
        self.id = Identifier().stringValue
    }

    init(text: String) {
        self.init()
        self.text = text
    }
}
