//
//  ViewController.swift
//  projeto_final
//
//  Created by Administrador on 11/05/19.
//  Copyright © 2019 Administrador. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet weak var lblConta: UITextView!
    @IBOutlet weak var txtSenha: UITextField!
    @IBOutlet weak var txtEmail: UITextField!
    
    @IBAction func trocarTela(_ sender: Any) {
        performSegue(withIdentifier: "trocarTelaPonto", sender: Any?.self)
    }
    
    
    @IBAction func btnCadastro(_ sender: Any) {
        
        let date = Date()
        let calendar = Calendar.current
        let hour = calendar.component(.hour, from: date)
        let minutes = calendar.component(.minute, from: date)
        let day = calendar.component(.day, from: date)
        let month = calendar.component(.month, from: date)
        
//        let now2 = ZonedDateTime(Clock.utc)
//        let day2 = now2.day
        
        txtEmail.text = String(hour) + ":" + String(minutes)
        txtSenha.text = String(day) + "/" + String(month)
        self.lblConta.text = String(hour) + ":" + String(minutes)
        
    }
    
    @IBAction func btnEntrar(_ sender: Any) {
        if txtEmail.text!.isEmpty {
            txtEmail.placeholder = "Informe o usuário!"
        } else if txtSenha.text!.isEmpty {
            txtSenha.placeholder = "Informe a senha!"
        } else if (txtSenha.text == "root" && txtEmail.text == "root") {
            trocarTela(self)
        }
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}
