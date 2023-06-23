#if canImport(SwiftUI)
import SwiftUI

@available(iOS 13.0, macOS 11.0, tvOS 13.0, watchOS 6.0, *)
public extension Image {
    init(symbol: SaFeSymbols) {
        self.init(systemName: symbol.symbolName)
    }
}

@available(iOS 14.0, macOS 11.0, tvOS 14.0, watchOS 7.0, *)
public extension Label<Text, Image> {
    init(_ titleKey: LocalizedStringKey, symbol: SaFeSymbols) {
        self.init(titleKey, systemImage: symbol.symbolName)
    }
    init(_ title: some StringProtocol, symbol: SaFeSymbols) {
        self.init(title, systemImage: symbol.symbolName)
    }
}

#if os(macOS)
@available(macOS 13.0, *)
public extension MenuBarExtra where Label == SwiftUI.Label<Text, Image>, Content: View {
    init(_ titleKey: LocalizedStringKey, symbol: SaFeSymbols, @ViewBuilder content: () -> Content) {
        self.init(titleKey, systemImage: symbol.symbolName) {
            content()
        }
    }
}
#endif
#endif
