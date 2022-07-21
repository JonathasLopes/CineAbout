//
//  MovieService.swift
//  CineAbout
//
//  Created by Jonathas Lopes on 20/07/22.
//

import Foundation

protocol MovieService {
    func fetchMovies(from endpoint: MovieListEndpoint, completion: @escaping (Result<MovieResponse, MovieError>) -> ())
    func fetchMovie(id: Int, completion: @escaping (Result<Movie, MovieError>) -> ())
    func searchMovie(query: String, completion: @escaping (Result<MovieResponse, MovieError>) -> ())
}

enum MovieListEndpoint: String, CaseIterable {
    case nowPlaying = "now_playing"
    case upcoming
    case topRated = "top_rated"
    case popular
    
    var description: String {
        switch self {
        case .nowPlaying: return "Em Cartaz"
        case .upcoming: return "Em Breve"
        case .topRated: return "Mais Avaliados"
        case .popular: return "Populares"
        }
    }
}

enum MovieError: Error, CustomNSError {
    case apiError
    case invalidEndpoint
    case invalidResponse
    case noData
    case serializationError
    
    var localizedDescription: String {
        switch self {
        case .apiError: return "Falha de conexão com a API"
        case .invalidEndpoint: return "EndPoint inválido"
        case .invalidResponse: return "Resposta inválida"
        case .noData: return "Sem dados"
        case .serializationError: return "Falha ao decodificar dados"
        }
    }
    
    var errorUserInfo: [String : Any] {
        [NSLocalizedDescriptionKey: localizedDescription]
    }
}
