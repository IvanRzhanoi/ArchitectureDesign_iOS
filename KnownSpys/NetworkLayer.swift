//
//  NetworkLayer.swift
//  KnownSpys
//
//  Created by Ivan Rzhanoi on 08/12/2018.
//  Copyright © 2018 JonBott.com. All rights reserved.
//

import Foundation
import Alamofire

class NetworkLayer {
    func loadFromServer(finished: @escaping (Data) -> Void) {
        print("loading data from server")
        
        Alamofire.request("http://localhost:8080/spies")
            .responseJSON
            { response in
                guard let data = response.data else { return }
                
                finished(data)
        }
    }
}
