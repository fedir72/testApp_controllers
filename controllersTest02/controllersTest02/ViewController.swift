//
//  ViewController.swift
//  controllersTest02
//
//  Created by fedir on 09.07.2021.
//

import UIKit



class ViewController: UIViewController {
    
    //MARK: - outlets
    
    @IBOutlet private weak var textField: UITextField!
    
    //MARK: - viewDidLoad()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.textField.delegate = self
    }

    //MARK: - actions
    
    @IBAction func didtapColorButtons(_ sender: UIButton) {
        
    let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "SecondVC") as SecondViewController
        switch sender.tag {
        
        case 1: vc.title = "Green"
        case 2: vc.title = "Red"
        default: vc.title = "Blue"
        }
        
        vc.view.backgroundColor = sender.backgroundColor
        vc.textLabel.text = textField.text
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
}

//MARK: - UITextFieldDelegate

extension ViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.textField.resignFirstResponder()
        //self.view.endEditing(true)
        return true
    }
    
}
