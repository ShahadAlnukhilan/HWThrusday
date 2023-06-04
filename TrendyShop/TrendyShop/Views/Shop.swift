import SwiftUI

struct Shop: View {
    @StateObject var cartManager = CartManager()
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    var body: some View {
        NavigationView{
           ScrollView {
               Text("TRENDY SHOP")
                   .font(.title)
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(productList, id: \.id) { product in
                        ProductCard(product: product)
                            .environmentObject(cartManager)
                    }
                }
                .padding()
           }
           //.navigationTitle(Text("TRENDY SHOP"))
            .toolbar {
                NavigationLink {
                    CartView()
                        .environmentObject(cartManager)
                } label: {
                    CartButton(numberOfProducts: cartManager.products.count)
                }
            }
        }
      
    }
}

struct Shop_Previews: PreviewProvider {
    static var previews: some View {
        Shop()
    }
}

