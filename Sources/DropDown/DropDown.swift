//public struct DropDown {
//    public private(set) var text = "Hello, World!"
//
//    public init() {
//    }
//}
//
import SwiftUI

@available(iOS 14.0, *)
public struct DropDown<Content: View>: View {
    
    @State private var chevronArrow : String = "chevron.up"
    @State private var offset : CGSize = .zero
    
    @ViewBuilder var content: Content
    
    var size : Size
    private var dimension : Double {
        switch size {
        case .small:
            return 1.15
        case .medium:
            return 1.3
        case .half:
            return 2
        }
    }
    
    var curtainColor: Color
    var chevronColor: Color
    
    public init(size: Size, curtainColor: Color, chevronColor: Color, @ViewBuilder content: () -> Content) {
        self.content = content()
        self.size = size
        self.curtainColor = curtainColor
        self.chevronColor = chevronColor
    }
    
    public var body: some View {
        //MARK: - Curtain frontend
        ZStack {
            RoundedRectangle(cornerRadius: 35)
                .ignoresSafeArea()
                .foregroundColor(curtainColor)
                .frame(width: UIScreen.main.bounds.height < 668 ? UIScreen.main.bounds.width + 25 : UIScreen.main.bounds.width, height: UIScreen.main.bounds.height < 668 ? UIScreen.main.bounds.height + 40 : UIScreen.main.bounds.height)
            VStack {
                content
                    .padding(.top, 30)
                Spacer()
                Image(systemName: chevronArrow)
                    .foregroundColor(chevronColor)
                    .padding(.bottom, 30)
            }
        }
        .offset(y: offset.height)
        //MARK: - Curtain gesture
        .gesture (
            DragGesture()
                .onChanged({ gesture in
                    withAnimation(.linear) {
                        offset = gesture.translation
                        if offset.height > 0 {
                            offset.height = .zero
                            chevronArrow = "chevron.up"
                        }
                    }
                })
                .onEnded({ gesture in
                    if offset.height > 100  {
                        
                    }
                    if offset.height > 0 {
                        withAnimation(.linear) {
                            offset = .zero
                            chevronArrow = "chevron.up"
                        }
                    }
                    if offset.height < -300 {
                        withAnimation(.linear) {
                        offset.height = -UIScreen.main.bounds.height / dimension
                        chevronArrow = "chevron.down"
                        }
                    }
                    
                    else {
                        withAnimation(.linear) {
                            offset = .zero
                        }
                    }
                })
        )
    }
}

@available(iOS 14.0, *)
struct DropDown_Previews: PreviewProvider {
    static var previews: some View {
       DropDown(size: .small, curtainColor: .black, chevronColor: .white, content: {
            Text(loremIpsum)
        })
        .previewDevice(PreviewDevice(rawValue: "iPhone 8"))
    }
}

