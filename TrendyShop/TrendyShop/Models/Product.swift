
import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}

var productList = [Product(name: "Orange Color ", image: "sweater1", price: 54),
                   Product(name: "Red wine Color", image: "sweater2", price: 89),
                   Product(name: "Sand Color", image: "sweater3", price: 79),
                   Product(name: "Sea Color", image: "sweater4", price: 94),
                   Product(name: "Cream Color", image: "sweater5", price: 99),
                   Product(name: "Beige Color", image: "sweater6", price: 65),
                   Product(name: "Grey Color", image: "sweater7", price: 54),
                   Product(name: "Mink Color", image: "sweater8", price: 83)]
