import Foundation
import SwiftUI

class HomeViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var valuewrapperPicker1: String = "Option 1"
    @Published var valuewrapperPicker1Values: [String] = ["Option 1", "Option 2", "Option 3"]
}
