//
//  DecoupledViewControllerWithAdapter.swift
//  Decoupling-Dependencies-Swift
//
//  Created by Enes Buğra Yenidünya on 20.08.2022.
//

import UIKit

final class DecoupledViewControllerWithAdapter: UIViewController {
    
    // MARK: Properties
    private let decoupledApiAdapter: DecoupledViewControllerAPIAdapter

    override func viewDidLoad() {
        super.viewDidLoad()

        decoupledApiAdapter.loadFeed { feedItems in
            // Do some logic here.
        }
    }
    
    init(decoupledApiAdapter: DecoupledViewControllerAPIAdapter) {
        self.decoupledApiAdapter = decoupledApiAdapter
        
        super.init(nibName: nil, bundle: .main)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
