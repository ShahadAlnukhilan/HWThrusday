

import SwiftUI

struct LoginApp: View {
    var body: some View {
        VStack{
            Button {
            } label: {
                Text("Login with Facebook")
                    .font(.title3)
                    .foregroundColor(.white)
                    .frame(width: 330,height: 50)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color("C1"))
                    )
            }
            .padding(.top,80)
            
                Text("Login with Google")
                    .font(.title3)
                    .foregroundColor(.white)
                    .frame(width: 330,height: 50)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color("C1"))
                        
                    )
            
            Text("Don't have an account?  ")
                .font(.footnote)
                .foregroundColor(.black) +
            Text("Sign up")
                .foregroundColor(.blue)
                .font(.footnote)
            
        }    }
}

struct LoginApp_Previews: PreviewProvider {
    static var previews: some View {
        LoginApp()
    }
}

