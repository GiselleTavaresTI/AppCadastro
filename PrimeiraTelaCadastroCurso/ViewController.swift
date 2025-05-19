//
//  ViewController.swift
//  PrimeiraTelaCadastroCurso
//
//Created by Giselle Dos Santos Tavares on 14/05/25.

//Aplicativo de tela de cadastro aonde o botão fica habilitado quando todos os campos
//estão preenchidos com pelo menos 1 caracter. Caso algum campo ou todos não ter nada
//preenchido, o botão "cadastra-se"fica inabilitado.


import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var registerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.keyboardType = .default
        emailTextField.keyboardType = . emailAddress
        passwordTextField.keyboardType = .default
        passwordTextField.isSecureTextEntry = true
        nameTextField.delegate = self
        emailTextField.delegate = self
        passwordTextField.delegate = self
        
        registerButton.isEnabled = false
    }
    
    @IBAction func registerButton(_ sender: UIButton) {
        print("O botão está funcionando corretamente")
    }
    
    func validateTextField(){
        
        if nameTextField.text != "" && emailTextField.text != "" && passwordTextField.text != "" {
            print(nameTextField.text ?? "")
            print(emailTextField.text ?? "")
            print(passwordTextField.text ?? "")
            registerButton.isEnabled = true
            
            
        }else{
            registerButton.isEnabled = false
            
        }
    }
}

extension ViewController: UITextFieldDelegate {
     
    func textFieldDidEndEditing(_ textField: UITextField) {
        print(#function)
        
        
    }
    
    func textFieldDidEndEditing(_ textField: UITextField, reason: UITextField.DidEndEditingReason) {
        print(#function)
        validateTextField()
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        print(#function)
        textField.resignFirstResponder()
        
        return true
    }
    
    func textFieldDidChangeSelection(_ textField: UITextField) {
        validateTextField()
    }
    
    
}
