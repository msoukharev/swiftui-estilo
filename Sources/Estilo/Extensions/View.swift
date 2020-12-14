import SwiftUI


@available(iOS 13.0, macOS 11.0, *)
public extension View {
    

    func accentForeground() -> some View {
        self.foregroundColor(.accentColor)
    }
    
    func accentBackground() -> some View {
        self.background(Color.accentColor)
    }
    
}
