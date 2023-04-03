//
// Copyright (c) B1ND, 2023.
//

import SwiftUI

/**
    도담도담 메인 화면의 카드 View입니다.
 
        Container("제목입니다") {
            Image("이미지")
        }
 */
@available(macOS 11, iOS 14, *)
public struct Container<Content: View>: View {
    
    public let title: String
    public let action: (() -> Void)?
    public let content: Content
    
    /**
        카드 View를 반환합니다.
            
        - Parameters:
           - title: View 좌측 상단에 위치할 제목입니다.
           - action: 터치했을 때 실행시킬 액션 클로저입니다.
           - content: 카드 내부 View입니다.
     */
    public init(_ title: String,
                action: (() -> Void)? = nil,
                @ViewBuilder content: () -> Content)
    {
        self.title = title
        self.action = action
        self.content = content()
    }
}

extension Container {
    
    public var view: some View {
        VStack(alignment: .leading) {
            HStack {
                Text(title)
                    .font(.system(size: 20, weight: .bold))
                    .foregroundColor(Colorset.head)
                Spacer()
                if action != nil {
                    Imageset.chevronRight
                        .frame(width: 24, height: 24)
                        .foregroundColor(Colorset.gray)
                }
            }
            content
        }
        .padding(20)
        .background(Colorset.foreground)
        .cornerRadius(17)
    }

    public var body: some View {
        if let action = action {
            return AnyView(
                Button(action: action) {
                    view
                }
            )
        } else {
            return AnyView(view)
        }
    }
}
