//
//  Helpers.swift
//  testProject_controllers
//
//  Created by fedir on 11.07.2021.
//

import UIKit

public func goToController(identifier: String ,goTo contr: UIViewController) -> UIViewController {
    let vc = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: identifier) as contr
   
    return vc
}
