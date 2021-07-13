//
//  SecondViewController.swift
//  testProject_controllers
//
//  Created by fedir on 09.07.2021.
//

import UIKit

class SecondViewController: UIViewController {

   //MARK: - properties
    
    static let id = "SecondVC"
    
    //MARK: - outlets
    
    @IBOutlet private weak var closeButton: UIButton!
    
    //MARK: - viewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Second View Controller"
        closeButton.layer.cornerRadius = Helpers.roundValue
    }
    
    //MARK: - actions

    @IBAction func didTapReturnButton(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    

}
