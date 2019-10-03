//
//  MovieBoxAPITests.swift
//  MovieBoxAPITests
//
//  Created by Cihan Karabaş on 2.10.2019.
//  Copyright © 2019 Cihan Karabaş. All rights reserved.
//

import XCTest
import MovieBoxAPI

class MovieBoxAPITests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testApiRun(){
        ApiClient.testRun()
    }

}
