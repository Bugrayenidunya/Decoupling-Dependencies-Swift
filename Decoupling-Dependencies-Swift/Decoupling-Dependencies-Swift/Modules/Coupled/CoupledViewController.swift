//
//  CoupledViewController.swift
//  Decoupling-Dependencies-Swift
//
//  Created by Enes Buğra Yenidünya on 20.08.2022.
//

import UIKit

final class CoupledViewController: UIViewController {
    
    // MARK: Properties
    private let coupledAPI = CoupledAPI()

    // MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        coupledAPI.loadFeed { feedItems in
            // Do some logic here.
        }
    }
}
