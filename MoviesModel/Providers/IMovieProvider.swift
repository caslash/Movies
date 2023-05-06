//
//  IMovieProvider.swift
//  MoviesModel
//
//  Created by Cameron Slash on 4/30/23.
//

import Foundation

public protocol IMovieProvider: BaseProvider {
    static var shared: any IMovieProvider { get }
    
    init()
    
    func getMovie() -> Movie
    
    func getMovie(byID id: String) -> Movie
    
    func getMovie(byName name: String) -> Movie
}
