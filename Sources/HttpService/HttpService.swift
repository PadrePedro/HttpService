import Foundation

public enum HttpError: Error {
    case networkError
    case noData
}

public protocol HttpService {
    
    func getRequest(url: URL, completion: @escaping (Result<Data,Error>)->Void)
    
}
