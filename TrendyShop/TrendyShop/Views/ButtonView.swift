

import SwiftUI

struct ButtonView: View {
    var body: some View {
        VStack{
            
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
            
            Text("Forget Password ?")
                .foregroundColor(.black)
                .padding(.top, 20)
            //  .padding(.leading,20)
        }
   }}


struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}


