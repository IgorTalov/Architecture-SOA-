//
//  ChatDataSource.swift
//  Architecture
//
//  Created by Игорь Талов on 09/02/2019.
//  Copyright © 2019 IgorTalov. All rights reserved.
//

import UIKit

class ChatDataSource: NSObject, UITableViewDataSource {

    var dataProvider: ChatDataProvidable
    private let cellConstructor: ChatCellConstructor = ChatCellConstructor()
    init(dataProvider: ChatDataProvidable) {
        self.dataProvider = dataProvider
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return dataProvider.numberOfRows(in: section)
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return cellConstructor.getCell(by: dataProvider.getMessage(by: indexPath))
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return dataProvider.numberOfSections()
    }
}
