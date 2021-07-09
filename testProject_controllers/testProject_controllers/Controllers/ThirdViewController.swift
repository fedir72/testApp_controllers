//
//  ThirdViewController.swift
//  testProject_controllers
//
//  Created by fedir on 09.07.2021.
//

import UIKit

class ThirdViewController: UIViewController {
    
    //MARK: - outlets

    @IBOutlet weak var closeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        closeButton.layer.cornerRadius = 8
        navigationController?.navigationBar.isHidden = true
    }
    

    //MARK: - actions
    
    @IBAction func didTapReturn(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
