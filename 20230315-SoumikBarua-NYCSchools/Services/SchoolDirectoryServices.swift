//
//  SchoolDirectoryServices.swift
//  20230315-SoumikBarua-NYCSchools
//
//  Created by SB on 3/15/23.
//

import Foundation

class SchoolDirectoryServices {
    
    // This class will handle the actual web service call for retrieving the school directory
    
    private let session: URLSession = {
        let config = URLSessionConfiguration.default
        return URLSession(configuration: config)
    }()
    
    func fetchSchoolDirectory(completion: @escaping (Result<[School], Error>) -> Void) {
        let url = NYCOpenDataAPI.schoolDirectoryURL
        let request = URLRequest(url: url)
        let task = session.dataTask(with: request) {
            (data, response, error) in
            
            let result = self.processSchoolDirectoryResponse(data: data, error: error)
            
            OperationQueue.main.addOperation {
                completion(result)
            }
        }
        task.resume()
        
    }
    
    private func processSchoolDirectoryResponse(data: Data?, error: Error?) -> Result<[School], Error> {
        guard let jsonData = data else { return .failure(error!) }
        
        return NYCOpenDataAPI.schools(fromJSON: jsonData)
    }
}
