//
//  MainTVC.swift
//  API_lesson_69
//
//  Created by Mirshod on 6/12/21.
//

import UIKit

class MainTVC: UITableViewCell {
    @IBOutlet var lbl: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    func updateCell(lbl: String){
        self.lbl.text = lbl
    }
    
}
