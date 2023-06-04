

import SwiftUI

struct ContentView: View {
    var body: some View {
        if #available(iOS 16.0, *) {
            NavigationStack{
                VStack{
                    
                    ZStack{
                        
                        Image("C")
                            .resizable()
                            .scaledToFit()
                            .ignoresSafeArea()
                        LinearGradient(
                            colors: [.clear, Color.black],
                            startPoint: .top,
                            endPoint: .bottom
                        )
                        .ignoresSafeArea()
                        Text("T R E N D Y")
                            .font(.title)
                            .fontWeight(.black)
                            .foregroundColor(Color.black)
                            .padding(.bottom,670)
                        VStack{
                            NavigationLink (destination: SignUpView()){
                                Text("SIGN UP")
                                    .bold()
                                    .font(.title2)
                                    .foregroundColor(.black)
                                    .frame(width: 330,height: 50)
                                    .background(
                                        RoundedRectangle(cornerRadius: 10)
                                            .fill(Color.white)
                                        
                                    )
                                    .padding(.top,550)
                            }
                            NavigationLink (destination: LoginView()){
                                
                                Text("LOGIN")
                                    .bold()
                                    .font(.title2)
                                    .font(.system(size: 18, weight: .medium))
                                    .foregroundColor(.white)
                                    .frame(width: 330,height: 50)
                                    .background(
                                        RoundedRectangle(cornerRadius: 10)
                                            .fill(Color.black)
                                    )
                                    .padding()
                            }
                            
                        }
                    }}}
        } else {
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


