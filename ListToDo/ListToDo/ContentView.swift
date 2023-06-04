
import SwiftUI

struct Todo: Identifiable {
    var id: Int
    var title: String
    var isCompleted: Bool
}

struct ContentView: View {
    @State private var todos = [
        Todo(id: 1, title: "Buy milk", isCompleted: false),
        Todo(id: 2, title: "Wash the car", isCompleted: true),
        Todo(id: 3, title: "Go for a walk", isCompleted: false),
    ]

    var body: some View {
        NavigationView {
            List {
                ForEach(todos) { todo in
                    Text(todo.title)
                        .strikethrough(todo.isCompleted)
                      
                }
                .onDelete(perform: delete)
               // .onInsert(perform: insert)
            }
            .toolbar {
                Button(action: {
                    let newTodo = Todo(id: todos.count + 1, title: "", isCompleted: false)
                    todos.append(newTodo)
                }) {
                    Text("Add Todo")
                }
            }
        }
    }

    func delete(at offsets: IndexSet) {
        todos.remove(atOffsets: offsets)
    }

    func insert(at offsets: IndexSet, with newTodo: Todo) {
        todos.insert(newTodo, at: offsets.first!)
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
