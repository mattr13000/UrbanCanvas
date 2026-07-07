import SwiftUI
import MapKit


extension View {
    
    // Progress bar used in MissionView, extracted for code readability
    func progressBarBackground(location :CGFloat) -> some View {
        self
            .background(
                Capsule()
                    .fill(
                        LinearGradient(
                            gradient: Gradient(stops: [
                                Gradient.Stop(color: .mainOrange, location: CGFloat(location)*0.2),
                                Gradient.Stop(color: .backgroundGray, location: 0)
                            ]),
                            startPoint: .leading,
                            endPoint: .trailing))
                    .foregroundStyle(.backgroundGray)
            )
    }
}

