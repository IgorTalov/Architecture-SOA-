//
//  ChatCellConstructor.swift
//  Architecture
//
//  Created by Игорь Талов on 10/02/2019.
//  Copyright © 2019 IgorTalov. All rights reserved.
//

import UIKit.UITableViewCell

class ChatCellConstructor {
    func getCell(by model: Message) -> UITableViewCell {
        let cell = UITableViewCell()
        cell.textLabel?.text = model.text
        return cell
    }
}
