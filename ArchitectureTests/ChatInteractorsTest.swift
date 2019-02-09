//
//  ChatInteractorsTest.swift
//  ArchitectureTests
//
//  Created by Игорь Талов on 09/02/2019.
//  Copyright © 2019 IgorTalov. All rights reserved.
//

@testable import Architecture
import XCTest

class ChatInteractorsTest: XCTestCase {

    lazy var chatInteractor: ChatInteractor = {
        let dataProvider = ChatDataProvider()
        let interactor = ChatInteractor(dataProvider: dataProvider)
        return interactor
    }()

    override func setUp() {
        super.setUp()
    }

    func testSplitting() {
        let messages = (0..<10).map { iteractor -> Message in
            let message = Message(text: "\(iteractor)")
            return message
        }
        let splittedArray = chatInteractor.split(messages: messages)

        //1. Sections count == Rows count
        XCTAssertEqual(messages.count, splittedArray.count)
        //2. Valid sort
        XCTAssertEqual(messages.map { $0.text }, splittedArray.flatMap { $0 }.map { $0.text })
    }
    override func tearDown() {
        super.tearDown()
    }

}
