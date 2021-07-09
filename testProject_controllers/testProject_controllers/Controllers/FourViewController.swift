//
//  FourViewController.swift
//  testProject_controllers
//
//  Created by fedir on 09.07.2021.
//

import UIKit

class FourViewController: UIViewController {
    
      
    //MARK: - outlets
   
    @IBOutlet weak var push5VCButton: UIButton!
    @IBOutlet weak var closeButton: UIButton!
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        
            navigationItem.title = "Four View Controller"
        [push5VCButton,closeButton].forEach(){$0?.layer.cornerRadius = 8}
    }
    

    //MARK: - actions
    
    @IBAction func didtapGoTo5VC(_ sender: UIButton) {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "FifthVC") as FifthViewController
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func didTapReturn(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    
}
}
 
