//
//  File.swift
//  
//
//  Created by Mercen on 2023/04/03.
//

import SwiftUI

/**
    도담도담의 컬러셋입니다.
 
        .foregroundColor(Colorset.head)
 */
@available(macOS 11, iOS 14, *)
public enum Colorset {
    
    // MARK: Colors
    public static let main: Color = color("#0067BC")
    public static let head: Color = color("#1F1F1F")
    public static let body: Color = color("#2D3541")
    public static let darkGray: Color = color("#818488")
    public static let gray: Color = color("#B2B6BC")
    public static let lightGray: Color = color("#D2D7DE")
    public static let background: Color = color("#F4F6F8")
    public static let foreground: Color = color("#FFFFFF")
}
