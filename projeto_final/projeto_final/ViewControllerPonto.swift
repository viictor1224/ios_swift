//
//  ViewControllerPonto.swift
//  projeto_final
//
//  Created by Alunos e Professores on 01/06/19.
//  Copyright © 2019 Administrador. All rights reserved.
//

import UIKit

class ViewControllerPonto: UIViewController {

    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBOutlet weak var txtPonto: UITextField!
    
    @IBAction func btnPonto(_ sender: Any) {
        let date = Date()
        let calendar = Calendar.current
        let hour = calendar.component(.hour, from: date)
        let minutes = calendar.component(.minute, from: date)
        let day = calendar.component(.day, from: date)
        let month = calendar.component(.month, from: date)
        
        //        let now2 = ZonedDateTime(Clock.utc)
        //        let day2 = now2.day
        txtPonto.text = String(hour) + ":" + String(minutes)
    }
    
//    @IBOutlet weak var tblPonto: UITableView!
//
//    override func tableView(_ tableView: tblPonto, numberOfRowsInSection section: Int) -> Int{
//
//    }
    
}
