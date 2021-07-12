//
//  FourViewController.swift
//  testProject_controllers
//
//  Created by fedir on 09.07.2021.
//

import UIKit

class FourViewController: UIViewController {
    
    //MARK: - properties
    
    static let id = "FourVC"
      
    //MARK: - outlets
   
    @IBOutlet private weak var push5VCButton: UIButton!
    @IBOutlet private weak var closeButton: UIButton!
    
    //MARK: - viewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.title = "Four View Controller"
        [push5VCButton,closeButton].forEach(){$0?.layer.cornerRadius = Helpers.roundValue}
    }
    

    //MARK: - actions
    
    @IBAction func didtapGoTo5VCButton(_ sender: UIButton) {
        if let vc = Helpers.getController(identifier: FifthViewController.id,transitStyle: nil) as? FifthViewController {
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    @IBAction func didTapReturnButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    
  }
    
}
 
