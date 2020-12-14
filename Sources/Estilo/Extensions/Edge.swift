import SwiftUI


@available(iOS 13.0, macOS 11.0, *)
extension Edge {
    
    public var opposite: Self {
        switch (self) {
        case (.trailing):
        return Self.leading
        case (.leading):
        return Self.trailing
        case (.top):
        return Self.bottom
        case (.bottom):
        return Self.top
        }
    }
    
}
