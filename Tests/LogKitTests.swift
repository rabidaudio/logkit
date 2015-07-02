// LogKitTests.swift
//
// Copyright (c) 2015, Justin Pawela & The LogKit Project (http://www.logkit.info/)
//
// Permission to use, copy, modify, and/or distribute this software for any
// purpose with or without fee is hereby granted, provided that the above
// copyright notice and this permission notice appear in all copies.
//
// THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
// WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
// MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
// ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
// WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
// ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
// OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

import Foundation
import LogKit
import XCTest


class LogLevelTests: XCTestCase {

//    override func setUp() {
//        super.setUp()
//    }
//
//    override func tearDown() {
//        super.tearDown()
//    }

    func testPriorities() {
        XCTAssertEqual(LXLogLevel.Error, LXLogLevel.Error, "LXLogLevel Comparable conformance: .Error != .Error")
        XCTAssertGreaterThan(LXLogLevel.Warning, LXLogLevel.Debug, "LXLogLevel Comparable conformance: .Warning !> .Debug")
        XCTAssertLessThan(LXLogLevel.Info, LXLogLevel.Notice, "LXLogLevel Comparable conformance: .Info !< .Notice")
    }

//    func testPerformanceExample() {
//        self.measureBlock() {
//        }
//    }

}


class ConsoleEndpointTests: XCTestCase {

    let endpoint = LXLogConsoleEndpoint()

    func testLog() {
        self.endpoint.write("Hello from the Console Endpoint!")
    }

}

class SerialConsoleEndpointTests: XCTestCase {

    let endpoint = LXLogSerialConsoleEndpoint()

    func testLog() {
        self.endpoint.write("Hello from the Serial Console Endpoint!")
    }

}
