//
//  File.swift
//  
//
//  Created by Peter Liaw on 9/1/22.
//

import Foundation

public class HttpServiceImpl: HttpService {
    
    public init() {
    }
    
    public func getRequest(url: URL, completion: @escaping (Result<Data, Error>) -> Void) {
        URLSession.shared.dataTask(with: url) { data, resp, error in
            guard let data = data else {
                completion(Result.failure(HttpError.noData))
                return
            }
            DispatchQueue.main.async {
                completion(Result.success(data))
            }
        }.resume()
    }
    
}
