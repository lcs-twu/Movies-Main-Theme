//
//  Movie.swift
//  Movies Main Theme
//
//  Created by Tom Wu on 2023-04-19.
//
import Blackbird
import Foundation

struct Movie: Codable{
    
    let title: String
    let year: String
    let released: String
    let runtime: String
    let director: String
    let language: String
    let country: String
    let awards: String
    let poster: String
    let imdbRating: String
    let imdbVotes: String
    let imdbID: Int
    
}
