impor SwiftUI

struct MyListScreen: View {
    let myLists = ["Reminders", "Groceries", "Entertaniment"]

    var body: some View {
        List {
            Text("My Lists")
                .font(.largeTitle)
                .bold()

            ForEach(myLists, id: \.self) { myList in
                HStack {
                    Image(systemName: "line.3.horizontal.circle.fill")
                        .font(.system(size: 32))
                    Text(myList)
                } 
            }
        }.listStyle(.plain)
    }
}


