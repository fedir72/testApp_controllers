//
//  Helpers.swift
//  testProject_controllers
//
//  Created by fedir on 11.07.2021.
//

import UIKit

public struct Helpers {
    
   static let roundValue: CGFloat = 8
    
   static func getController(identifier: String , transitStyle: UIModalTransitionStyle? ,presentStyle: UIModalPresentationStyle = .automatic) -> UIViewController {
        let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: identifier)
        vc.modalPresentationStyle = presentStyle
        if let transitStyle = transitStyle { vc.modalTransitionStyle = transitStyle }
        return vc
    }
}


