//
//  FirstViewController.swift
//  testProject_controllers
//
//  Created by fedir on 09.07.2021.
//

import UIKit

class FirstViewController: UIViewController {
    
    //MARK: - outlets
    
    @IBOutlet private weak var push2VCButton: UIButton!
    @IBOutlet private weak var modal3VCbutton: UIButton!
    @IBOutlet private weak var modal4VCButton: UIButton!
    
    //MARK: - viewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        [push2VCButton,modal3VCbutton,modal4VCButton].forEach(){$0?.layer.cornerRadius = Helpers.roundValue}
       
    }
    
    //MARK: - actions
    
    @IBAction func didTapGoTo2VCButton(_ sender: UIButton) {
        if  let vc = Helpers.getController(identifier: SecondViewController.id,
                                           transitStyle: nil) as? SecondViewController {
            navigationController?.pushViewController(vc, animated: true)
        }
    }
    
    @IBAction func didtapGoTo3VCButton(_ sender: UIButton) {
        if let vc = Helpers.getController(identifier: ThirdViewController.id,
                                          transitStyle: .coverVertical,
                                          presentStyle: .fullScreen) as? ThirdViewController {
            present(vc, animated: true, completion: nil)
         }
        
    }
    
    @IBAction  func didTapGoTo4VCButton(_ sender: UIButton) {
        if let vc = Helpers.getController(identifier: FourViewController.id,
                                          transitStyle: .coverVertical) as? FourViewController {
            let nvc = UINavigationController(rootViewController: vc)
            nvc.modalPresentationStyle = .fullScreen
            present(nvc, animated: true, completion: nil)
        }
    }
    
    

}

