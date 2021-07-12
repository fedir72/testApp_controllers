//
//  ViewController.swift
//  controllersTest02
//
//  Created by fedir on 09.07.2021.
//

import UIKit

private enum Colours: String{
    case red = "Red"
    case blue = "Blue"
    case green = "Green"
}

class ViewController: UIViewController {
    
    //MARK: - outlets
    
    @IBOutlet private weak var textField: UITextField!
    @IBOutlet private var colorButtons: [UIButton]!
    
    //MARK: - viewDidLoad()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        self.textField.delegate = self
        colorButtons.forEach{$0.layer.cornerRadius = Constant.cornerRadiusForView}
    }

    //MARK: - actions
    
    @IBAction func didtapColorButtons(_ sender: UIButton) {
        
        let vc = UIStoryboard(name: Constant.storyboardName, bundle: nil).instantiateViewController(identifier: SecondViewController.id) as SecondViewController
        switch sender.tag {
        
        case 1: vc.title = Colours.green.rawValue
        case 2: vc.title = Colours.blue.rawValue
            
        default: vc.title = Colours.green.rawValue
            
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
    func secondViewController(_ viewController: UIViewController, didChanged text: String) {
        textField.text = text
    }
     
}
