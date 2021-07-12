//
//  FifthViewController.swift
//  testProject_controllers
//
//  Created by fedir on 09.07.2021.
//

import UIKit

class FifthViewController: UIViewController {
    
    //MARK: - properties
    
    static let id = "FifthVC"
    
    //MARK: - outlets
    
    @IBOutlet private weak var closeButton: UIButton!
    
    //MARK: - viewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Fifth View Controller"
        closeButton.layer.cornerRadius = Helpers.roundValue
    }
    
    //MARK: - actions
    
    @IBAction func didTapReturn(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
}
