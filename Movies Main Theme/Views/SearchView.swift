//
//  SearchView.swift
//  Movies Main Theme
//
//  Created by Tom Wu on 2023-04-20.
//

import SwiftUI

struct SearchView: View {
    
    @State var foundMovies: [Movie] = []
    
    var body: some View {
        List(foundMovies, id: imdbID){ currentMovie in
            
            HStack{
                Image(currentMovie.poster)
                VStack{
                    Text(currentMovie.title)
                        .bold()
                    Text(currentMovie.year)
                    Text(currentMovie.director)
                    Text(currentMovie.language)
                    Text(currentMovie.imdbRating)
                    Text(currentMovie.imdbVotes)
                    Text(currentMovie.runtime)
                }
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
