//
//  NYCAPIClient.swift
//  MapKit-Lab
//
//  Created by Maitree Bain on 2/25/20.
//  Copyright © 2020 Maitree Bain. All rights reserved.
//

import Foundation
import NetworkHelper

struct NYCAPIClient {
    
    static func getNYCData(completion: @escaping(Result <[NYCModel], AppError>) -> ()) {
        let endPointString = "https://data.cityofnewyork.us/resource/uq7m-95z8.json"
        
        guard let url = URL(string: endPointString) else {
            completion(.failure(.badURL(endPointString)))
            return
        }
        
        let request = URLRequest(url: url)
        
        NetworkHelper.shared.performDataTask(with: request) { (result) in
            
            switch result{
            case .failure(let appError):
                completion(.failure(.networkClientError(appError)))
            case .success(let data):
                dump(data)
                do {
                    let locations = try JSONDecoder().decode([NYCModel].self, from: data)
                    
                    completion(.success(locations))
                }
                catch {
                    completion(.failure(.decodingError(error)))
                }
                
                
            }
        }
        
    }
    
    
}
