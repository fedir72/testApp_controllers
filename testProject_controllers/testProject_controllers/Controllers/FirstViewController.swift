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
    
    let storyBoard = UIStoryboard(name: "Main", bundle: nil)
    
    //MARK: - viewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
     
        [push2VCButton,modal3VCbutton,modal4VCButton].forEach(){$0?.layer.cornerRadius = 8}
       
    }
    
    //MARK: - actions
    
    @IBAction func didTapGoTo2VC(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(identifier: "SecondVC") as! SecondViewController
        navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func didtapGoTo3VC(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(identifier: "ThirdVC") as! ThirdViewController
        vc.modalTransitionStyle = .coverVertical
        vc.modalPresentationStyle = .fullScreen
        present(vc, animated: true, completion: nil)
        
    }
    
    @IBAction func didTapGoTo4VC(_ sender: UIButton) {
        let vc = storyboard?.instantiateViewController(identifier: "FourVC") as! FourViewController
        let nvc = UINavigationController(rootViewController: vc)
        nvc.modalTransitionStyle = .coverVertical
        nvc.modalPresentationStyle = .fullScreen
        present(nvc, animated: true, completion: nil)
    }
    
    

}

