//
//  Movie.swift
//  UnitTestingURLSession
//
//  Created by Lo Howard on 11/26/19.
//  Copyright © 2019 Lo Howard. All rights reserved.
//

import Foundation

class Movie {
    internal init(movie: String, detail: String) {
        self.movie = movie
        self.detail = detail
    }
    
    let movie: String
    let detail: String
}
