import SwiftUI

struct TVSearchView: View {
    @StateObject private var presenter = TVSearchPresenter()
    @ObservedObject var coordinator: TVSearchCoordinator
    @State private var query: String = ""
    
    var body: some View {
        VStack {
            TextField("Search TV Shows", text: $query)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .autocorrectionDisabled(true)
                .autocapitalization(.none)
            Button(action: {
                presenter.searchTVShows(query: query)
            }) {
                Text("Search")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(8)
            }
            .padding()
            List(presenter.searchResults, id: \.self) { result in
                Text(result)
            }
        }
    }
}
