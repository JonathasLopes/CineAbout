//
//  Movie.swift
//  CineAbout
//
//  Created by Jonathas Lopes on 20/07/22.
//

import Foundation

struct MovieResponse: Decodable {
    let results: [Movie]
}

struct Movie: Decodable {
    let id: Int
    let title: String
    let backdropPath: String?
    let posterPath: String?
    let releaseDate: String
    let overview: String
}
