import SwiftUI
import MapKit

// Extracted title styling since it's 3 lines repeating themselves on quite a few files
extension Text {
    func titleText(color :Color) -> some View {
        self
            .font(.title)
            .bold()
            .foregroundStyle(color)
    }
}

