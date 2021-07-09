//
//  SecondViewController.swift
//  testProject_controllers
//
//  Created by fedir on 09.07.2021.
//

import UIKit

class SecondViewController: UIViewController {
    
    //MARK: - outlets
    
    @IBOutlet weak var closeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "SecondView Controller"
        closeButton.layer.cornerRadius = 8
    }
    
    //MARK: - actions

    @IBAction func didTapReturn(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    

}
