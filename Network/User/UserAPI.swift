//
//  UserAPI.swift
//  MoviesTask
//
//  Created by Eissa on 9/24/20.
//  Copyright © 2020 Eissa. All rights reserved.
//

import Foundation
import Alamofire

protocol LoadMoviesProtocol {
    func topRatedMovies(completion: @escaping (Swift.Result<TopRatedMovies?, NSError>) -> Void)
    func popularMovies(completion: @escaping (Swift.Result<TopRatedMovies?, NSError>) -> Void)
    func comingMovies(completion: @escaping (Swift.Result<TopRatedMovies?, NSError>) -> Void)
    func movieDetails(completion: @escaping (Swift.Result<MovieDetails?, NSError>) -> Void)
    func recommendationMovies(completion: @escaping (Swift.Result<RecommendationMovies?, NSError>) -> Void)
}

class UserAPI: BaseAPI<UserNetworking>, LoadMoviesProtocol {
    
    //Mark:- Requestes
    func topRatedMovies(completion: @escaping (Swift.Result<TopRatedMovies?, NSError>) -> Void) {
        self.fetchData(target: .getTopMovies, responseClass: TopRatedMovies.self) { (result) in
            completion(result)
        }
    }
    func popularMovies(completion: @escaping (Swift.Result<TopRatedMovies?, NSError>) -> Void) {
        self.fetchData(target: .getPopularMovies, responseClass: TopRatedMovies.self) { (result) in
            completion(result)
        }
    }
    func comingMovies(completion: @escaping (Swift.Result<TopRatedMovies?, NSError>) -> Void) {
        self.fetchData(target: .getComingMovies, responseClass: TopRatedMovies.self) { (result) in
            completion(result)
        }
    }
    func movieDetails(completion: @escaping (Swift.Result<MovieDetails?, NSError>) -> Void) {
        self.fetchData(target: .getMovieDetails, responseClass: MovieDetails.self) { (result) in
            completion(result)
        }
    }
    func recommendationMovies(completion: @escaping (Swift.Result<RecommendationMovies?, NSError>) -> Void) {
        self.fetchData(target: .recommendationMovies, responseClass: RecommendationMovies.self) { (result) in
            completion(result)
        }
    }
}
