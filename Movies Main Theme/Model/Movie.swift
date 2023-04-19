//
//  Movie.swift
//  Movies Main Theme
//
//  Created by Tom Wu on 2023-04-19.
//
import Blackbird
import Foundation

struct Movie: Identifiable, Codable, BlackbirdModel{
    @BlackbirdColumn var title: String
}
