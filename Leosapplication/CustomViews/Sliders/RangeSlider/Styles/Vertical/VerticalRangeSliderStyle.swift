import SwiftUI

public struct VerticalRangeSliderStyle<Track: View, LowerThumb: View,
    UpperThumb: View>: RangeSliderStyle
{
    private let track: Track
    private let lowerThumb: LowerThumb
    private let upperThumb: UpperThumb

    let lowerThumbSize: CGSize
    let upperThumbSize: CGSize

    let lowerThumbInteractiveSize: CGSize
    let upperThumbInteractiveSize: CGSize

    private let options: RangeSliderOptions

    public func makeBody(configuration: Self.Configuration) -> some View {
        GeometryReader { geometry in
            ZStack {
                self.track
                    .environment(\.trackRange, configuration.range.wrappedValue)
                    .environment(\.rangeTrackConfiguration,
                                 RangeTrackConfiguration(bounds: configuration.bounds,
                                                         lowerLeadingOffset: self.lowerThumbSize
                                                             .height / 2,
                                                         lowerTrailingOffset: self.lowerThumbSize
                                                             .height / 2 + self.upperThumbSize
                                                             .height,
                                                         upperLeadingOffset: self.lowerThumbSize
                                                             .height + self.upperThumbSize
                                                             .height / 2,
                                                         upperTrailingOffset: self.upperThumbSize
                                                             .height / 2))
                    .accentColor(.accentColor)

                ZStack {
                    self.lowerThumb
                        .frame(width: self.lowerThumbSize.width, height: self.lowerThumbSize.height)
                }
                .frame(minWidth: self.lowerThumbInteractiveSize.width,
                       minHeight: self.lowerThumbInteractiveSize.height)
                .position(x: geometry.size.width / 2,
                          y: geometry.size
                              .height -
                              distanceFrom(value: configuration.range.wrappedValue.lowerBound,
                                           availableDistance: geometry.size
                                               .height - self.upperThumbSize
                                               .height,
                                           bounds: configuration.bounds,
                                           leadingOffset: self.lowerThumbSize
                                               .height / 2,
                                           trailingOffset: self.lowerThumbSize
                                               .height / 2))
                .gesture(DragGesture()
                    .onChanged { gestureValue in
                        if configuration.dragOffset.wrappedValue == nil {
                            configuration.dragOffset.wrappedValue = gestureValue.startLocation
                                .y -
                                (geometry.size
                                    .height -
                                    distanceFrom(value: configuration.range.wrappedValue.lowerBound,
                                                 availableDistance: geometry
                                                     .size.height - self
                                                     .upperThumbSize
                                                     .height,
                                                 bounds: configuration
                                                     .bounds,
                                                 leadingOffset: self
                                                     .lowerThumbSize
                                                     .height / 2,
                                                 trailingOffset: self
                                                     .lowerThumbSize
                                                     .height / 2))
                        }

                        let computedLowerBound = valueFrom(distance: geometry.size
                            .height -
                            (gestureValue.location
                                .y - (configuration.dragOffset.wrappedValue ?? 0)),
                            availableDistance: geometry.size.height - self.upperThumbSize
                                .height,
                            bounds: configuration.bounds,
                            step: configuration.step,
                            leadingOffset: self.lowerThumbSize.height / 2,
                            trailingOffset: self.lowerThumbSize.height / 2)

                        if self.options.contains(.forceAdjacentValue) {
                            let computedUpperBound = max(computedLowerBound,
                                                         configuration.range.wrappedValue
                                                             .upperBound)
                            configuration.range
                                .wrappedValue = computedLowerBound ... computedUpperBound
                        } else {
                            let computedLowerBound = min(computedLowerBound,
                                                         configuration.range.wrappedValue
                                                             .upperBound)
                            configuration.range
                                .wrappedValue = computedLowerBound ... configuration.range
                                .wrappedValue.upperBound
                        }

                        configuration.onEditingChanged(true)
                    }
                    .onEnded { _ in
                        configuration.dragOffset.wrappedValue = nil
                        configuration.onEditingChanged(false)
                    })

                ZStack {
                    self.upperThumb
                        .frame(width: self.upperThumbSize.width, height: self.upperThumbSize.height)
                }
                .frame(minWidth: self.upperThumbInteractiveSize.width,
                       minHeight: self.upperThumbInteractiveSize.height)
                .position(x: geometry.size.width / 2,
                          y: geometry.size
                              .height -
                              distanceFrom(value: configuration.range.wrappedValue.upperBound,
                                           availableDistance: geometry.size
                                               .height,
                                           bounds: configuration.bounds,
                                           leadingOffset: self.lowerThumbSize
                                               .height + self.upperThumbSize
                                               .height / 2,
                                           trailingOffset: self.upperThumbSize
                                               .height / 2))
                .gesture(DragGesture()
                    .onChanged { gestureValue in
                        if configuration.dragOffset.wrappedValue == nil {
                            configuration.dragOffset.wrappedValue = gestureValue.startLocation
                                .y -
                                (geometry.size
                                    .height -
                                    distanceFrom(value: configuration.range.wrappedValue.upperBound,
                                                 availableDistance: geometry
                                                     .size.height,
                                                 bounds: configuration
                                                     .bounds,
                                                 leadingOffset: self
                                                     .lowerThumbSize
                                                     .height + self
                                                     .upperThumbSize
                                                     .height / 2,
                                                 trailingOffset: self
                                                     .upperThumbSize
                                                     .height / 2))
                        }

                        let computedUpperBound = valueFrom(distance: geometry.size
                            .height -
                            (gestureValue.location
                                .y - (configuration.dragOffset.wrappedValue ?? 0)),
                            availableDistance: geometry.size.height,
                            bounds: configuration.bounds,
                            step: configuration.step,
                            leadingOffset: self.lowerThumbSize.height + self.upperThumbSize
                                .height / 2,
                            trailingOffset: self.upperThumbSize.height / 2)

                        if self.options.contains(.forceAdjacentValue) {
                            let computedLowerBound = min(computedUpperBound,
                                                         configuration.range.wrappedValue
                                                             .lowerBound)
                            configuration.range
                                .wrappedValue = computedLowerBound ... computedUpperBound
                        } else {
                            let computedUpperBound = max(computedUpperBound,
                                                         configuration.range.wrappedValue
                                                             .lowerBound)
                            configuration.range.wrappedValue = configuration.range.wrappedValue
                                .lowerBound ... computedUpperBound
                        }

                        configuration.onEditingChanged(true)
                    }
                    .onEnded { _ in
                        configuration.dragOffset.wrappedValue = nil
                        configuration.onEditingChanged(false)
                    })
            }
            .frame(width: geometry.size.width)
        }
        .frame(minWidth: max(lowerThumbInteractiveSize.width, upperThumbInteractiveSize.width))
    }

    public init(track: Track, lowerThumb: LowerThumb, upperThumb: UpperThumb,
                lowerThumbSize: CGSize = CGSize(width: 27, height: 27),
                upperThumbSize: CGSize = CGSize(width: 27, height: 27),
                lowerThumbInteractiveSize: CGSize = CGSize(width: 44, height: 44),
                upperThumbInteractiveSize: CGSize = CGSize(width: 44, height: 44),
                options: RangeSliderOptions = .defaultOptions)
    {
        self.track = track
        self.lowerThumb = lowerThumb
        self.upperThumb = upperThumb
        self.lowerThumbSize = lowerThumbSize
        self.upperThumbSize = upperThumbSize
        self.lowerThumbInteractiveSize = lowerThumbInteractiveSize
        self.upperThumbInteractiveSize = upperThumbInteractiveSize
        self.options = options
    }
}

public extension VerticalRangeSliderStyle where Track == DefaultVerticalRangeTrack {
    init(lowerThumb: LowerThumb, upperThumb: UpperThumb,
         lowerThumbSize: CGSize = CGSize(width: 27, height: 27),
         upperThumbSize: CGSize = CGSize(width: 27, height: 27),
         lowerThumbInteractiveSize: CGSize = CGSize(width: 44, height: 44),
         upperThumbInteractiveSize: CGSize = CGSize(width: 44, height: 44),
         options: RangeSliderOptions = .defaultOptions)
    {
        track = DefaultVerticalRangeTrack()
        self.lowerThumb = lowerThumb
        self.upperThumb = upperThumb
        self.lowerThumbSize = lowerThumbSize
        self.upperThumbSize = upperThumbSize
        self.lowerThumbInteractiveSize = lowerThumbInteractiveSize
        self.upperThumbInteractiveSize = upperThumbInteractiveSize
        self.options = options
    }
}

public extension VerticalRangeSliderStyle where LowerThumb == DefaultThumb,
    UpperThumb == DefaultThumb
{
    init(track: Track, lowerThumbSize: CGSize = CGSize(width: 27, height: 27),
         upperThumbSize: CGSize = CGSize(width: 27, height: 27),
         lowerThumbInteractiveSize: CGSize = CGSize(width: 44, height: 44),
         upperThumbInteractiveSize: CGSize = CGSize(width: 44, height: 44),
         options: RangeSliderOptions = .defaultOptions)
    {
        self.track = track
        lowerThumb = DefaultThumb()
        upperThumb = DefaultThumb()
        self.lowerThumbSize = lowerThumbSize
        self.upperThumbSize = upperThumbSize
        self.lowerThumbInteractiveSize = lowerThumbInteractiveSize
        self.upperThumbInteractiveSize = upperThumbInteractiveSize
        self.options = options
    }
}

public extension VerticalRangeSliderStyle where LowerThumb == DefaultThumb,
    UpperThumb == DefaultThumb, Track == DefaultVerticalRangeTrack
{
    init(lowerThumbSize: CGSize = CGSize(width: 27, height: 27),
         upperThumbSize: CGSize = CGSize(width: 27, height: 27),
         lowerThumbInteractiveSize: CGSize = CGSize(width: 44, height: 44),
         upperThumbInteractiveSize: CGSize = CGSize(width: 44, height: 44),
         options: RangeSliderOptions = .defaultOptions)
    {
        track = DefaultVerticalRangeTrack()
        lowerThumb = DefaultThumb()
        upperThumb = DefaultThumb()
        self.lowerThumbSize = lowerThumbSize
        self.upperThumbSize = upperThumbSize
        self.lowerThumbInteractiveSize = lowerThumbInteractiveSize
        self.upperThumbInteractiveSize = upperThumbInteractiveSize
        self.options = options
    }
}

public struct DefaultVerticalRangeTrack: View {
    public var body: some View {
        VerticalRangeTrack()
            .frame(width: 3)
            .background(Color.secondary.opacity(0.25))
            .cornerRadius(1.5)
    }
}
