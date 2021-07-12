//
//  SecondViewController.swift
//  controllersTest02
//
//  Created by fedir on 09.07.2021.
//

import UIKit

protocol SecondViewControllerDelegate: class {
    func secondViewController(_ viewController: UIViewController,didChanged text: String)
}

class SecondViewController: UIViewController {
    
    //MARC: - properties
    
    static let id: String = "SecondVC"
    private let someText: String = "empty text"
    
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

extension SecondViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        
        self.delegate?.secondViewController(self, didChanged: textField.text ?? someText)
        self.textField.resignFirstResponder()
        navigationController?.popViewController(animated: true)
        return true
    }
}
    

   

