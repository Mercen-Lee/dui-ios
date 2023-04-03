//
// Copyright (c) B1ND, 2023.
//

import SwiftUI

/**
    도담도담의 이미지셋입니다.
 
        Imageset.arrowLeft
 */
@available(macOS 11, iOS 14, *)
public enum Imageset {
    static func image(_ name: String) -> Image {
        return Image(name, bundle: .module)
            .resizable()
    }
    
    static func icon(_ name: String) -> Image {
        return Image(name, bundle: .module)
            .resizable()
            .renderingMode(.template)
    }
    
    // MARK: - Image
    public static let bus = image("bus")
    public static let calendar = image("calendar")
    public static let cloud = image("cloud")
    public static let hand = image("hand")
    public static let moon = image("moon")
    public static let running = image("running")
    public static let sun = image("sun")
    
    // MARK: - Icon
    public static let arrowForward = icon("arrow-forward")
    public static let arrowLeft = icon("arrow-left")
    public static let arrowRight = icon("arrow-right")
    public static let book = icon("book")
    public static let check = icon("check")
    public static let chevronDown = icon("chevron-down")
    public static let chevronLeft = icon("chevron-left")
    public static let chevronRight = icon("chevron-right")
    public static let chevronUp = icon("chevron-up")
    public static let clock = icon("clock")
    public static let dropDown = icon("drop-down")
    public static let dropUp = icon("drop-up")
    public static let home = icon("home")
    public static let location = icon("location")
    public static let map = icon("map")
    public static let menu = icon("menu")
    public static let more = icon("more")
    public static let person = icon("person")
    public static let plus = icon("plus")
    public static let xmarkCircle = icon("xmark-circle")
    public static let xmark = icon("xmark")
}
