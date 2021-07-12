//
//  ThirdViewController.swift
//  testProject_controllers
//
//  Created by fedir on 09.07.2021.
//

import UIKit

class ThirdViewController: UIViewController {
    
    //MARK: - properties
    
    static let id = "ThirdVC"
    
    //MARK: - outlets

    @IBOutlet private weak var closeButton: UIButton!
    
    //MARK: - viewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()

        closeButton.layer.cornerRadius = Helpers.roundValue
    }
    

    //MARK: - actions
    
    @IBAction func didTapReturnButton(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
