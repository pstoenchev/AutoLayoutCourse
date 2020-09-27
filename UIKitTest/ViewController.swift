//
//  ViewController.swift
//  UIKitTest
//
//  Created by Stoyan Stoyanov on 25/09/2020.
//  Copyright © 2020 Stoyan Stoyanov. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {

    @IBOutlet private weak var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print(NetworkingProvider.server)
        
        label.text = "Notes:".localized
    }
    
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
}
