//
//  MainVC.swift
//  API_lesson_69
//
//  Created by Mirshod on 6/12/21.
//

import UIKit
import Alamofire
import SwiftyJSON
import SVProgressHUD


//MARK: -API
//PARAMS: -> q - api.openweathermap.org/data/2.5/weather?

// API KEY 62eac99c8c20b33f3e1be1646c7658cf
class MainVC: UIViewController {
    
    var data = ["main","second"]
    @IBOutlet var tableView: UITableView!{
        didSet{
            tableView.delegate = self
            tableView.dataSource = self
            tableView.register(UINib(nibName: "MainTVC", bundle: nil), forCellReuseIdentifier: "MainTVC")
            tableView.tableFooterView = UIView()
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }

}
extension MainVC: UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        2
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MainTVC", for: indexPath) as! MainTVC
        
        return cell
    }
    
    
}

