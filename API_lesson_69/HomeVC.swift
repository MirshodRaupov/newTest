//
//  HomeVC.swift
//  API_lesson_69
//
//  Created by Mirshod on 6/14/21.
//

import UIKit
import Alamofire
import SwiftyJSON
import SVProgressHUD
//MARK: -API
//PARAMS: -> q - api.openweathermap.org/data/2.5/weather?


// API KEY 62eac99c8c20b33f3e1be1646c7658cf
class HomeVC: UIViewController {

    
    @IBOutlet var txtField: UITextField!
    @IBOutlet var descLbl: UILabel!
    @IBOutlet var mainLbl: UILabel!
    @IBOutlet var tempLbl: UILabel!
    @IBOutlet var cityNameLbl: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    @IBAction func BtnPressed(_ sender: Any) {
        getWeather(cityName: txtField.text!)
        
    }
    func getWeather(cityName: String){
   
        AF.request("https://api.openweathermap.org/data/2.5/weather", method: .get, parameters: ["q" : cityName, "appid" : "6071ce65206d98bb9b3d1a6366e29130"]).responseJSON { (response) in
            if let data = response.data{
                let json = JSON(data)
                let temp = json["main"]["temp"].doubleValue
                print(temp - 273)
            }else{
                print("Xato")
                print(response.error.debugDescription)
            }
            
        }
//        AF.request("https://api.openweathermap.org/data/2.5/forecast/daily", method: .get, parameters: ["q" : cityName, "appid" : "62eac99c8c20b33f3e1be1646c7658cf"]).responseJSON { response in
//            if  let data = response.data {
//                SVProgressHUD.dismiss()
//                print(String(data: data, encoding: .utf8))
//                self.cityNameLbl.text = cityName
//                self.tempLbl.text = long
//                if !json["weather"].arrayValue.isEmpty{
//                    let main = json["weather"][0]["main"].stringValue
//                    let desc = json["weather"][0]["description"].stringValue
//                    self.mainLbl.text = main
//                    self.descLbl.text = desc
//                }
//                print(cityName)
//                print(long)
//                print(String(data: data, encoding: .utf8)!)
            
        }

    }
    
    
