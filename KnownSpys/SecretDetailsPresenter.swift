//
//  SecretDetailsPresenter.swift
//  KnownSpys
//
//  Created by Ivan Rzhanoi on 08/12/2018.
//  Copyright © 2018 JonBott.com. All rights reserved.
//

import Foundation

class SecretDetailsPresenter {
    var spy: SpyDTO
    var password: String { return spy.password }
    
    init(with spy: SpyDTO) {
        self.spy = spy
    }
}
