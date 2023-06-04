
import SwiftUI

struct LoginView: View {
    @State var Password = ""
    
    var body: some View {
        NavigationView{
            VStack(alignment: .leading, spacing: 25){
                Text("Login")
                    .bold()
                    .font(.largeTitle)
                    .padding(.bottom)
                    .padding(.leading,20)
                
                SecureField("Email", text: $Password)
                    .font(.title3)
                    .padding(.leading,20)
                Divider()
                    .padding(.horizontal,20)
                
                SecureField("Password", text: $Password)
                    .padding(.leading,20)
                    .font(.title3)
                Divider()
                    .padding(.horizontal, 20)
                
                VStack{
                    NavigationLink (destination: Shop()){
                        Text("LOGIN")
                            .bold()
                            .font(.title2)
                            .foregroundColor(.white)
                            .padding(.all)
                            .frame(width: 330,height: 50)
                            .background(
                                RoundedRectangle(cornerRadius: 10)
                                    .fill(Color.black)
                                    .padding(.leading,10)
                                
                            )
                    }
                    Text("Forget Password ?")
                        .foregroundColor(.black)
                        .padding(.top, 20)
                    //  .padding(.leading,20)
                    
                }
                
                LoginApp()
                
                
                
            }
            .padding(.leading,25)
        }
    } }
struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}


