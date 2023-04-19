//
//  SearchResult.swift
//  Movies Main Theme
//
//  Created by Tom Wu on 2023-04-19.
//

import Foundation

struct SearchResult: Codable{
    
    let resultCount: Int
    let results: [Movie]
    
}
