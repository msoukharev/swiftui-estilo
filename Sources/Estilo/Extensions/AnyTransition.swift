import SwiftUI


@available(iOS 13.0, macOS 11.0, *)
public extension AnyTransition {
    
    func stack(edge: Edge) -> AnyTransition {
        AnyTransition.asymmetric(insertion: .move(edge: edge), removal: .move(edge: edge))
    }
    
    func queue(edge: Edge) -> AnyTransition {
        AnyTransition.asymmetric(insertion: .move(edge: edge), removal: .move(edge: edge.opposite))
    }
    
}
