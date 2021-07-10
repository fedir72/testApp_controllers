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
    @IBOutlet private var colorButtons: [UIButton]!
    
    
    //MARK: - viewDidLoad()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.textField.delegate = self
        colorButtons.forEach{$0.layer.cornerRadius = 8}
    }

    //MARK: - actions
    
    @IBAction func didtapColorButtons(_ sender: UIButton) {
        
    let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "SecondVC") as SecondViewController
        switch sender.tag {
        
        case 1: vc.title = "Green"
        case 2: vc.title = "Blue"
        default: vc.title = "Red"
        }
        
        vc.view.backgroundColor = sender.backgroundColor
        vc.textField.text = self.textField.text
        
        vc.delegate = self
        
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
}

//MARK: - UITextFieldDelegate

extension ViewController: UITextFieldDelegate {
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.textField.resignFirstResponder()
        return true
    }
    
}

//MARK: - SecondViewControllerdelegate

extension ViewController: SecondViewControllerDelegate {
    
    func getText(text: String) {
        self.textField.text = text
    }
}
