import XCTest
@testable import DynumiteLocalizations

final class StringsTests: XCTestCase {
    
    static var allTests = [
        ("testMenuKeys", testMenuKeys),
        ("testStatusKeys", testStatusKeys),
        ("testPlaceholderKeys", testPlaceholderKeys),
        ("testFrequencyKeys", testFrequencyKeys),
        ("testActionKeys", testActionKeys),
        ("testHelpKeys", testHelpKeys),
        ("testErrorKeys", testErrorKeys),
    ]
    
    func testMenuKeys() {
        XCTAssertEqual(Strings.Menu.about.key, "ABOUT")
        XCTAssertEqual(Strings.Menu.update.key, "UPDATE")
        XCTAssertEqual(Strings.Menu.lastUpdate.key, "LAST_UPDATE")
        XCTAssertEqual(Strings.Menu.nextUpdate.key, "NEXT_UPDATE")
        XCTAssertEqual(Strings.Menu.ipAddress.key, "IP_ADDRESS")
        XCTAssertEqual(Strings.Menu.preferences.key, "PREFERENCES")
        XCTAssertEqual(Strings.Menu.quit.key, "QUIT")
    }
    
    func testStatusKeys() {
        XCTAssertEqual(Strings.Status.ok.key, "OK")
        XCTAssertEqual(Strings.Status.updating.key, "UPDATING")
        XCTAssertEqual(Strings.Status.unknown.key, "UNKNOWN")
    }
    
    func testPlaceholderKeys() {
        XCTAssertEqual(Strings.Placeholder.username.key, "USERNAME")
        XCTAssertEqual(Strings.Placeholder.password.key, "PASSWORD")
        XCTAssertEqual(Strings.Placeholder.hostname.key, "HOSTNAME")
        XCTAssertEqual(Strings.Placeholder.location.key, "LOCATION")
        XCTAssertEqual(Strings.Placeholder.frequency.key, "FREQUENCY")
        XCTAssertEqual(Strings.Placeholder.required.key, "REQUIRED")
        XCTAssertEqual(Strings.Placeholder.optional.key, "OPTIONAL")
    }
    
    func testFrequencyKeys() {
        XCTAssertEqual(Strings.Frequency.manual.key, "FREQUENCY_MANUAL")
        XCTAssertEqual(Strings.Frequency.hours24.key, "FREQUENCY_24HOURS")
        XCTAssertEqual(Strings.Frequency.hours12.key, "FREQUENCY_12HOURS")
        XCTAssertEqual(Strings.Frequency.hours6.key, "FREQUENCY_6HOURS")
        XCTAssertEqual(Strings.Frequency.minutes60.key, "FREQUENCY_60MINUTES")
        XCTAssertEqual(Strings.Frequency.minutes30.key, "FREQUENCY_30MINUTES")
        XCTAssertEqual(Strings.Frequency.minutes15.key, "FREQUENCY_15MINUTES")
    }
    
    func testActionKeys() {
        XCTAssertEqual(Strings.Action.review.key, "REVIEW")
        XCTAssertEqual(Strings.Action.contactSupport.key, "CONTACT_SUPPORT")
        XCTAssertEqual(Strings.Action.log.key, "LOG")
        XCTAssertEqual(Strings.Action.clear.key, "CLEAR")
    }
    
    func testHelpKeys() {
        XCTAssertEqual(Strings.Help.tip.key, "TIP")
        XCTAssertEqual(Strings.Help.aboutBlob.key, "ABOUT_BLOB")
    }
    
    func testErrorKeys() {
        XCTAssertEqual(Strings.Error.Description.ipAddress.key, "ERROR_DESCRIPTION_IP_ADDRESS")
        XCTAssertEqual(Strings.Error.Description.authentication.key, "ERROR_DESCRIPTION_AUTHENTICATION")
        XCTAssertEqual(Strings.Error.Description.request.key, "ERROR_DESCRIPTION_REQUEST")
        XCTAssertEqual(Strings.Error.Description.service.key, "ERROR_DESCRIPTION_SERVICE")
        XCTAssertEqual(Strings.Error.RecoverySuggestion.ipAddress.key, "ERROR_RECOVERY_SUGGESTION_IP_ADDRESS")
        XCTAssertEqual(Strings.Error.RecoverySuggestion.authentication.key, "ERROR_RECOVERY_SUGGESTION_AUTHENTICATION")
        XCTAssertEqual(Strings.Error.RecoverySuggestion.request.key, "ERROR_RECOVERY_SUGGESTION_REQUEST")
        XCTAssertEqual(Strings.Error.RecoverySuggestion.service.key, "ERROR_RECOVERY_SUGGESTION_SERVICE")
    }
}
