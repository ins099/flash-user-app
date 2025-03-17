import SwiftUI

struct BaseLayout<Content: View>: View {
    // A closure that returns the content (children)
    let content: () -> Content
    
    @State private var isDrawerOpen = false
    
    @Environment(\.safeAreaInsets) private var safeAreaInsets
    
    var containerWidth: CGFloat = UIScreen.main.bounds.width
    var containerHeight: CGFloat = UIScreen.main.bounds.height
    
    // ProfileSection Arguments
    var isHome: Bool
    var image: Image
    var cgb: Bool
    var onActionBack: (() -> Void)?
    var showOtherOption: Bool
    
    init(isHome: Bool = false, image: Image = Image("Logo"), cgb: Bool = true, onActionBack: (() -> Void)? = nil, showOtherOption: Bool = true, @ViewBuilder content: @escaping () -> Content) {
        self.isHome = isHome
        self.image = image
        self.cgb = cgb
        self.onActionBack = onActionBack
        self.showOtherOption = showOtherOption
        self.content = content
    }
    
    func onPressMenu (){
        withAnimation {
            isDrawerOpen.toggle() // Toggle the drawer
        }
    }
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: [Color.primaryBlue, Color.lightBlue]), startPoint: .top, endPoint: .bottom)
            VStack(alignment: .center) {
                ProfileSection(isHome: isHome, image: image, cgb: cgb, onActionBack: onActionBack, onPressMenu:onPressMenu, showOtherOption: showOtherOption)
                
                VStack(alignment: .leading) {
                    content()
//                    Spacer()
                }
                .frame(width: containerWidth)
                .background(Color.white)
                .cornerRadius(50, corners: [.topLeft, .topRight])
                
            }
            .padding(.top, safeAreaInsets.top)
            .labelsHidden()
            
            // Drawer Menu
            HStack {
                Spacer() // Push the drawer to the right

                VStack {
                    Spacer() // You can add drawer items here
                    Text("Drawer Menu Item 1")
                    Text("Drawer Menu Item 2")
                    Text("Drawer Menu Item 3")
                    Spacer()
                }
                .frame(width: 250) // Width of the drawer
                .background(Color.white)
                .cornerRadius(20)
                .shadow(radius: 10)
                .offset(x: isDrawerOpen ? 0 : 250) // Slide in/out effect
                .animation(.easeInOut(duration: 0.4), value: isDrawerOpen) // Smooth animation
            }
            .background(Color.black.opacity(isDrawerOpen ? 0.5 : 0).ignoresSafeArea()) // Dim background
            .onTapGesture {
                withAnimation {
                    isDrawerOpen = false // Close drawer when tapping outside
                }
            }
            
        }
        .ignoresSafeArea()
        .navigationBarTitle("Become Driver")
        .navigationBarHidden(true)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        BaseLayout {
            // This is where you provide the children
            VStack {
                Text("This is the main content area")
                Text("You can put any SwiftUI views here")
            }
            .padding()
            .background(Color.green.opacity(0.2))
            .cornerRadius(8)
        }
    }
}
