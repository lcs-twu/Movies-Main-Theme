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
                VStack(alignment: .leading){
                    Text(currentMovie.title)
                        .bold()
                    HStack{
                        Text(currentMovie.year)
                        Text("/")
                        Text(currentMovie.director)
                        Text("/")
                        Text(currentMovie.language)
                        Text("/")
                        Text(currentMovie.runtime)
                    }
                    HStack{
                        Text(currentMovie.imdbRating)
                        Text(currentMovie.imdbVotes)
                    }
                }
            }
        }
        .task {
            foundMovies = await NetworkService.fetch(resultsFor: "Suzume")
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
