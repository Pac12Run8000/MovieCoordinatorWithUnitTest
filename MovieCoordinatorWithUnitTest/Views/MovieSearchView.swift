import SwiftUI

struct MovieSearchView: View {
    @StateObject private var presenter = MovieSearchPresenter()
    @ObservedObject var coordinator: MovieSearchCoordinator
    @State private var query: String = ""
    
    var body: some View {
        VStack {
            TextField("Search Movies", text: $query)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding()
                .autocorrectionDisabled(true)
                .autocapitalization(.none)
            Button(action: {
                presenter.searchMovies(query: query)
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
