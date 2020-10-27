//
//  ViewController.swift
//  Escaping Closure
//
//  Created by Adwait Barkale on 27/10/20.
//  Copyright © 2020 Adwait Barkale. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        fetchData()
        sendRequest()
    }

    func fetchData()
    {
        let no = DataHelper().fetchAccount { (data, success) in
            if success
            {
                print(data)
            }else{
                print("Data Not Received")
            }
        }
        print(no)
    }
    
    func sendRequest()
    {
        DataHelper().sendRequest(url: "https://xyz.com") { (response, success) in
            if success{
                let strUrl = response as! String
                print(strUrl)
            }else{
                print("Failed to receive data")
            }
        }
    }

}

