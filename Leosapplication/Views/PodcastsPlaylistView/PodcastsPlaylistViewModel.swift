import Foundation
import SwiftUI

class PodcastsPlaylistViewModel: ObservableObject {
    @Published var nextScreen: String? = nil
    @Published var groupnineSlider1: Float = 50.0
}
