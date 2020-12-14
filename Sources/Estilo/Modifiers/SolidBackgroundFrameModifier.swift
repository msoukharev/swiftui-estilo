import SwiftUI


public struct SolidBackgroundFrameModifier: ViewModifier {

    public var padding: EdgeInsets
    public var bgColor: Color
    public var rounding: CGFloat
    
    public init(padding: CGFloat, rounding: CGFloat, bgColor: Color = Color.secondarySystemBackground) {
        self.padding = EdgeInsets(top: padding, leading: padding, bottom: padding, trailing: padding)
        self.rounding = rounding
        self.bgColor = bgColor
    }
    
    public init(padding edgeInsetPadding: EdgeInsets, rounding: CGFloat, bgColor: Color = Color.secondarySystemBackground) {
        self.padding = edgeInsetPadding
        self.rounding = rounding
        self.bgColor = bgColor
    }
    
    public func body(content: Content) -> some View {
        content.padding(padding).background(Color.secondarySystemBackground).clipShape(RoundedRectangle(cornerRadius: rounding))
    }
    
}


struct FrameModifier_Previews: PreviewProvider {
    
    static var previews: some View {
        
        VStack {
            Text("Something")
            Text("Something")
        }.modifier(SolidBackgroundFrameModifier(padding: Padding.medium, rounding: Rounding.xweak))
    
    }
    
}
