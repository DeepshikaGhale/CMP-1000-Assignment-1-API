//
//  ViewController.swift
//  Assignment-1-API
//
//  Created by Deepshika Ghale on 2023-05-24.
//

import UIKit

class ViewController: UIViewController {

    
    @IBAction func getCatFactsAPIData(_ sender: Any) {
        Task {
                    print("Cat Facts API Data: ")
                    print(await CatFacts_Helper.fetch())
                    }
    }
    @IBAction func getMeowFactsAPIData(_ sender: Any) {
        Task {
            print("Meow Facts API Data: ")
            print(await MeowFactsAPIHelper.fetch())
            }
    }
    
    
    @IBAction func getParallelumAPIData(_ sender: Any) {
        Task {
            print("Parallelum API Data: ")
            print(await ParallelumAPI_Helper.fetch())
            }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

