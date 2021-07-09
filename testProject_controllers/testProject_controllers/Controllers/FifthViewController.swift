//
//  FifthViewController.swift
//  testProject_controllers
//
//  Created by fedir on 09.07.2021.
//

import UIKit

class FifthViewController: UIViewController {
    
    //MARK: - outlets
    
    @IBOutlet weak var closeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Fifth View Controller"
        closeButton.layer.cornerRadius = 8
    }
    
    //MARK: - actions
    
    @IBAction func didTapReturn(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
}
