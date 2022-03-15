import Foundation
import SwiftUI
import CoreLocation

struct Book: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var cover: String
    var content: String
    var read: Bool
    var cat: String
}
