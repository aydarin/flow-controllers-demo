//
//  ThirdViewController.swift
//  FlowControllersIntro
//
//  Created by Aydar Mukhametzyanov on 6/7/17.
//  Copyright © 2017 Aydar Mukhametzyanov. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    var onNext: ((Void) -> Void)?
    var text: String!
    
    @IBOutlet private weak var textLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Third"
        updateText()
    }
    
    private func updateText() {
        textLabel.text = text
    }
    
    static func createStoryboardInstance() -> ThirdViewController {
        return UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "third") as! ThirdViewController
    }
    
    // MARK: - Actions
    
    @IBAction func nextPressed(_ sender: Any) {
        onNext?()
    }

}
