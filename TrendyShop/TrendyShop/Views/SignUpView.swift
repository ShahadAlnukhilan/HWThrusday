
import SwiftUI

struct SignUpView: View {
    @State var Password = ""

    var body: some View {
        VStack(alignment: .leading, spacing: 25){
            
            Text("Sign up")
                .bold()
                .font(.largeTitle)
                .padding(.bottom)
            
            
            SecureField("First name", text: $Password)
                .font(.title3)
                .padding(.leading,2)
            Divider()
                .padding(.horizontal, 10)
            
            SecureField("last name", text: $Password)
                .font(.title3)
                .padding(.leading,2)
            Divider()
                .padding(.horizontal, 10)
            SecureField("Email", text: $Password)
                .font(.title3)
                .padding(.leading,2)
            Divider()
                .padding(.horizontal, 10)
            SecureField("Password", text: $Password)
                .font(.title3)
                .padding(.leading,2)
            Divider()
                .padding(.horizontal, 10)
            VStack{
            Button {
            } label: {
                Text("SIGN UP")
                    .bold()
                    .font(.title2)
                    .foregroundColor(.white)
                  .padding(.all)
                    .frame(width: 330,height: 50)
                    .background(
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color.black)
                    
                    )                            .padding(.top,45)

            
            }
                Text("Already have an account?  ")
                    .font(.footnote)
                    .foregroundColor(.black) +
                Text("Sign in")
                    .foregroundColor(.blue)
                    .font(.footnote)
                
            }
   
            
        }.padding(.leading,25)
                }
}

struct SignUpView_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}


