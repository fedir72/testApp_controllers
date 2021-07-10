//
//  SecondViewController.swift
//  controllersTest02
//
//  Created by fedir on 09.07.2021.
//

import UIKit

protocol SecondViewControllerDelegate: class {
    func getText(text: String)
}

class SecondViewController: UIViewController {
    
    //MARC: - properties
    
    weak var delegate: SecondViewControllerDelegate?
    
    //MARK: - outlets
  
    @IBOutlet  weak var textField: UITextField!
    

   //MARK: - viewDidLoad()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        textField.delegate = self
        textField.backgroundColor = .white
        
    }
    
   
}

extension SecondViewController: UITextFieldDelegate
{
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        self.delegate?.getText(text: textField.text ?? "empty")
        self.textField.resignFirstResponder()
        navigationController?.popViewController(animated: true)
        return true
    }
}
    

   

