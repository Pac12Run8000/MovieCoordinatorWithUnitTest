import SwiftUI

class MovieSearchPresenter: ObservableObject {
    @Published var searchResults: [String] = []
    
    func searchMovies(query: String) {
        DispatchQueue.main.asyncAfter(deadline: .now() + 1) {
            self.searchResults = ["Result 1", "Result 2", "Result 3"]
        }
    }
}
