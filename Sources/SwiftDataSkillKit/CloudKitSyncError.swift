import Foundation

/// Specific error domain for SwiftData iCloud synchronization operations.
public enum CloudKitSyncError: Error, LocalizedError {
    case tokenExpired
    case networkUnavailable
    case quotaExceeded
    case unknown(String)

    public var errorDescription: String? {
        switch self {
        case .tokenExpired:
            return "The iCloud server change token has expired. A full refresh is required."
        case .networkUnavailable:
            return "Network connection unavailable for iCloud synchronization."
        case .quotaExceeded:
            return "iCloud storage quota has been exceeded."
        case .unknown(let msg):
            return "CloudKit sync error: \(msg)"
        }
    }
}
