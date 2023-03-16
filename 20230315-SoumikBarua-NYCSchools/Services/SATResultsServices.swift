//
//  SATResultsServices.swift
//  20230315-SoumikBarua-NYCSchools
//
//  Created by SB on 3/16/23.
//

import Foundation

class SATResultsServices {
    
    // This class will handle the actual web service call for retrieving the SAT results
    
    static let shared = SATResultsServices()
    
    private let session: URLSession = {
        let config = URLSessionConfiguration.default
        return URLSession(configuration: config)
    }()
    
    func fetchSATResults(schoolDBN: String, completion: @escaping (Result<SATResult, Error>) -> Void) {
        let url = NYCOpenDataAPI.satResultsURL(query: ["dbn":schoolDBN])
        let request = URLRequest(url: url)
        let task = session.dataTask(with: request) {
            (data, response, error) in
            
            let _ = self.processSATResultsResponse(data: data, error: error)
                
        }
        task.resume()
        
    }
    
    private func processSATResultsResponse(data: Data?, error: Error?) -> Result<SATResult, Error> {
        guard let jsonData = data else { return .failure(error!) }
        
        return NYCOpenDataAPI.satResult(fromJSON: jsonData)
    }
}
