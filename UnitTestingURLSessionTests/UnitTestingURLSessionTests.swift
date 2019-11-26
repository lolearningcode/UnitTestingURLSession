//
//  UnitTestingURLSessionTests.swift
//  UnitTestingURLSessionTests
//
//  Created by Lo Howard on 11/26/19.
//  Copyright © 2019 Lo Howard. All rights reserved.
//

import XCTest
@testable import UnitTestingURLSession

class UnitTestingURLSessionTests: XCTestCase {
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }
    
    func testGetMoviesWithExpectedURLHostAndPath() {
        let apiRespository = APIRepository()
        let mockURLSession = MockURLSession()
        
        apiRespository.session = mockURLSession
        
        apiRespository.getMovies { movies, error in
            
        }
        
        XCTAssertEqual(mockURLSession.cachedURL?.host, "mymovieslist.com")
        XCTAssertEqual(mockURLSession.cachedURL?.path, "/topmovies")
    }
    
}
