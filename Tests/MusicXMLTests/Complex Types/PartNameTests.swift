//
//  PartNameTests.swift
//  MusicXMLTests
//
//  Created by James Bean on 8/2/19.
//

import MusicXML
import XCTest
import XMLCoder

class PartNameTests: XCTestCase {
    func testDecoding() throws {
        let xml = "<part-name>MusicXML Part</part-name>"
        let decoded = try XMLDecoder().decode(PartName.self, from: xml.data(using: .utf8)!)
        let expected = PartName("MusicXML Part")
        XCTAssertEqual(decoded, expected)
    }

//    func testDecodingPartName() throws {
//        let xml = """
//        <part-name-display>
//          <display-text>Trumpet in B</display-text>
//          <accidental-text>flat</accidental-text>
//          <display-text> 1</display-text>
//        </part-name-display>
//        """
//        let decoded = try XMLDecoder(trimValueWhitespaces: false).decode(NameDisplay.self, from: xml.data(using: .utf8)!)
//        let expected = NameDisplay(texts: [
//            .displayText("Trumpet in B"),
//            .accidentalText(AccidentalText(.flat)),
//            .displayText(" 1"),
//        ])
//        
//        XCTAssertEqual(decoded, expected)
//    }
}
