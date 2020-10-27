//
//  DataHelper.swift
//  Escaping Closure
//
//  Created by Adwait Barkale on 27/10/20.
//  Copyright © 2020 Adwait Barkale. All rights reserved.
//

import Foundation

class DataHelper{
    
    public func fetchAccount(completion:@escaping(_ response:Any,_ success:Bool)->Void)-> Int{
                    let testNum = 10
                    let success = true
                   completion(testNum,success)
        return 2
    }
    
    public func sendRequest(url: String,completion:@escaping(_ response:Any,_ success:Bool)->Void)
    {
        completion(url,true)
    }
}
