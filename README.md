# SaFeSymbols

SaFeSymbols provides safe access for SF Symbols.

```swift
var body: some View {
    Image(symbol: .sun_max)
}
```

SaFeSymbols provides static availablitiy check. If a symbol is potentially unavailable in the context, there will be an availability error.

```swift
var body: some View {
    // 'wifi_circle' is only available in iOS 15.0 or newer
    Image(symbol: .wifi_circle)
}
```
Instead, you can use `if #available` to make sure the symbol can be used;

```swift
var body: some View {
    if #available(iOS 15.0, *) {
        Image(symbol: .wifi_circle)
    } else {
        Image(symbol: .wifi)
    }
}
```

