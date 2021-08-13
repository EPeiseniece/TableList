//
//  Movie.swift
//  TableList
//
//  Created by elina.peiseniece on 13/08/2021.
//

import Foundation


struct Movie {
    let movieName: String
    let movieYear: String
    let poster: String
    
    
    static func createMovie() -> [Movie]{
        var movies: [Movie] = []
        
        let movieNames = DataManager.shared.movieName
        let movieYears = DataManager.shared.movieYear
        let posters = DataManager.shared.poster
        
        for index in 0..<movieNames.count {
            let movie = Movie(movieName: movieNames[index], movieYear: movieYears[index], poster: posters[index])
            movies.append(movie)
        }
        
        return movies
        
    }
}
