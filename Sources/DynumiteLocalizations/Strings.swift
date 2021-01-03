import LocaleSupport
import Foundation

public enum Strings {
    public static let bundle: Bundle = .module
}

// MARK: - Menu
public extension Strings {
    enum Menu: String, ExpressibleByLocalizedString {
        case about = "About"
        case update = "Update"
        case lastUpdate = "Last Update"
        case nextUpdate = "Next Update"
        case ipAddress = "IP Address"
        case preferences = "Preferences"
        case quit = "Quit"
        
        public var bundle: Bundle { .module }
        public var defaultIndicators: (prefix: Character, suffix: Character)? { ("[", "]") }
    }
}

// MARK: - Status
public extension Strings {
    enum Status: String, ExpressibleByLocalizedString {
        case ok = "OK"
        case updating = "Updating"
        case error = "Error"
        case unknown = "Unknown"
        
        public var bundle: Bundle { .module }
        public var defaultIndicators: (prefix: Character, suffix: Character)? { ("[", "]") }
    }
}

// MARK: - Placeholder
public extension Strings {
    enum Placeholder: String, ExpressibleByLocalizedString {
        case username = "Username"
        case password = "Password"
        case hostname = "Hostname"
        case group = "Group"
        @available(*, deprecated, renamed: "group")
        case location = "Location"
        case frequency = "Frequency"
        case required = "Required"
        case optional = "Optional"
        
        public var bundle: Bundle { .module }
        public var defaultIndicators: (prefix: Character, suffix: Character)? { ("[", "]") }
    }
}

// MARK: - Frequency
public extension Strings {
    enum Frequency: String, ExpressibleByLocalizedString {
        case manual = "Manual"
        case hours24 = "24 Hours"
        case hours12 = "12 Hours"
        case hours6 = "6 Hours"
        case minutes60 = "60 Minutes"
        case minutes30 = "30 Minutes"
        case minutes15 = "15 Minutes"
        
        public var bundle: Bundle { .module }
        public var prefix: String? { "frequency" }
        public var defaultIndicators: (prefix: Character, suffix: Character)? { ("[", "]") }
        
        public var key: String {
            switch self {
            case .manual: return autogeneratedKey
            case .hours24: return generateKey(using: "24hours")
            case .hours12: return generateKey(using: "12hours")
            case .hours6: return generateKey(using: "6hours")
            case .minutes60: return generateKey(using: "60minutes")
            case .minutes30: return generateKey(using: "30minutes")
            case .minutes15: return generateKey(using: "15minutes")
            }
        }
    }
}

// MARK: - Action
public extension Strings {
    enum Action: String, ExpressibleByLocalizedString {
        case review = "Review in App Store"
        case contactSupport = "Contact Support"
        case log = "Log"
        case clear = "Clear"
        case close = "Close"
        case copyToClipboard = "Copy to Clipboard"
        
        public var bundle: Bundle { .module }
        public var defaultIndicators: (prefix: Character, suffix: Character)? { ("[", "]") }
    }
}

// MARK: - Help
public extension Strings {
    enum Help: String, ExpressibleByLocalizedString {
        case tip = "If both hostname and location are specified, only the location will be used."
        case aboutBlob = "Dynumite keeps your Dynu.com hostname/location up to date with your current public IP Address.\n\nDynumite uses the public API's from dynu.com, ipify.org, and ifconfig.co.\n\nIf you find Dynumite useful, please consider taking a moment to leave a review in the App Store."
        
        public var bundle: Bundle { .module }
        public var defaultIndicators: (prefix: Character, suffix: Character)? { ("[", "]") }
    }
}

// MARK: - Notification
public extension Strings {
    enum Notification: String, ExpressibleByLocalizedString {
        case title = "Updating IP Address"
        case body = "Dynumite is checking for changes to your IP Address."
        
        public var prefix: String? { "notification" }
        public var bundle: Bundle { .module }
        public var defaultIndicators: (prefix: Character, suffix: Character)? { ("[", "]") }
    }
}

// MARK: - Error
public extension Strings {
    enum Error {
        public enum Description: String, ExpressibleByLocalizedString {
            case ipAddress = "Could not obtain IP Address."
            case authentication = "Could not authenticate with Dynu.com."
            case request = "Dynu.com could not be updated."
            case service = "Dynu.com service may be experiencing difficulties."
            
            public var bundle: Bundle { .module }
            public var prefix: String? { "errorDescription" }
            public var defaultIndicators: (prefix: Character, suffix: Character)? { ("[", "]") }
        }
        
        public enum RecoverySuggestion: String, ExpressibleByLocalizedString {
            case ipAddress = "Verify internet accessibility to %@."
            case authentication = "Check your credentials and verify your account has access to Dynu.com."
            case request = "Check your hostname/location and verify they are valid with your account."
            case service = "A DNS Error, Abuse Flag, or Update Suspension was returned."
            
            public var bundle: Bundle { .module }
            public var prefix: String? { "errorRecoverySuggestion" }
            public var defaultIndicators: (prefix: Character, suffix: Character)? { ("[", "]") }
        }
    }
}
