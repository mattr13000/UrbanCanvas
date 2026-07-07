import SwiftUI

struct AnnotationView: View {
    let image :Image
    let imageFrameSize :CGFloat
    var body: some View {
        VStack(spacing: 0) {
            image
                .circleImage(frameSize: imageFrameSize)
                .foregroundStyle(.mainOrange)
                .padding(2)
                .background(Circle().fill(.white))
            
            
            Image(systemName: "arrowtriangle.down.fill")
                .resizable()
                .frame(width: 12, height: 8)
                .foregroundStyle(.white)
                .offset(y: -3)
        }
    }
}

#Preview {
    //AnnotationView(image: Image(systemName: "arrowtriangle.down.fill"))
}
