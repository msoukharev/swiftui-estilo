import SwiftUI
#if os(iOS)
import UIKit
#endif
#if os(macOS)
import AppKit
#endif


@available(iOS 13.0, macOS 11.0, *)
public extension Color {
    
    #if canImport(UIKit)
    
    static let systemBackground = Color(UIColor.systemBackground)
    static let secondarySystemBackground = Color(UIColor.secondarySystemBackground)
    static let tertiarySystemBackground = Color(UIColor.tertiarySystemBackground)
    
    #endif
    
    #if canImport(AppKit)
    
    static let systemBackground = Color(NSColor.windowBackgroundColor)
    static let secondarySystemBackground = Color(NSColor.controlBackgroundColor)
    static let ternarySystemBackground = Self.systemBackground
    
    #endif
    
}


@available(iOS 13.0, macOS 11.0, *)
public extension Color {
    
    func fade(_ fade: Double) -> Self {
        let _corrected_opacity = max(0, min(1, 1 - fade))
        return self.opacity(_corrected_opacity)
    }
    
}

