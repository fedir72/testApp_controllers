//
//  MainController.swift
//  testProject_controllers
//
//  Created by fedir on 09.07.2021.
//

import UIKit

class MainController: UIViewController {
    
    //MARK: - outlets
    
    @IBOutlet weak var push2VCButton: UIButton!
    @IBOutlet weak var modal3VCbutton: UIButton!
    @IBOutlet weak var modal4VCButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        [push2VCButton,modal3VCbutton,modal4VCButton].forEach(){$0?.layer.cornerRadius = 8}
       
    }

}

