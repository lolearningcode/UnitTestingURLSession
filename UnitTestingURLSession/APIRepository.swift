//
//  APIRepository.swift
//  UnitTestingURLSession
//
//  Created by Lo Howard on 11/26/19.
//  Copyright © 2019 Lo Howard. All rights reserved.
//

import Foundation

class APIRepository {
    
    var session: URLSession!
    
    func getMovies(completion: @escaping ([Movie]?, Error?) -> Void) {
        guard let url = URL(string: "https://mymovieslist.com/topmovies") else { fatalError() }
        
        session.dataTask(with: url) { (_, _, _) in
            
        }
    }
}

class MockURLSession: URLSession {
    var cachedURL: URL?
    
    override func dataTask(with url: URL, completionHandler:      @escaping(Data?, URLResponse?, Error?) -> Void) -> URLSessionDataTask {
        
        self.cachedURL = url
        
        return URLSessionDataTask()
    }
}
