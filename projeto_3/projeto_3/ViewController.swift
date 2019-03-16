//
//  ViewController.swift
//  projeto_3
//
//  Created by Alunos e Professores on 16/03/19.
//  Copyright © 2019 Alunos e Professores. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

        
    @IBOutlet weak var usuario_field: UITextField!
    
    @IBOutlet weak var senha_field: UITextField!
    
    
    @IBAction func login(_ sender: Any) {
        
        if usuario_field.text!.isEmpty {
            usuario_field.text = "Informe o usuário!"
        }   else if senha_field.text!.isEmpty {
            usuario_field.text = "Informe a senha!"
        } else if (senha_field.text == "root" && usuario_field.text == "root") {
            usuario_field.text = "Usuário e/ou senha inválido!"
            }
    }
    
    @IBAction func ajuda(_ sender: Any) {
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

