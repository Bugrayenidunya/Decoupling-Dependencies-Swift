//
//  DecoupledViewController.swift
//  Decoupling-Dependencies-Swift
//
//  Created by Enes Buğra Yenidünya on 20.08.2022.
//

import UIKit

final class DecoupledViewController: UIViewController {

    // MARK: Properties
    private let decoupledAPI: DecoupledAPIFetchable
    
    // MARK: Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        decoupledAPI.loadFeed { feedItems in
            // Do some logic here.
        }
    }
    
    // MARK: Init
    init(decoupledAPI: DecoupledAPIFetchable) {
        self.decoupledAPI = decoupledAPI
        
        super.init(nibName: nil, bundle: .main)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
