//
//  MainFlowController.swift
//  FlowControllersIntro
//
//  Created by Aydar Mukhametzyanov on 6/7/17.
//  Copyright © 2017 Aydar Mukhametzyanov. All rights reserved.
//

import UIKit

class MainFlowController {
    
    private let navigationController: UINavigationController
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        navigationController.setViewControllers([configuredFirstVC()], animated: false)
    }
    
    private func configuredFirstVC() -> FirstViewController {
        let vc = FirstViewController.createStoryboardInstance()
        vc.color = .yellow
        
        vc.onNext = {
            self.navigationController.pushViewController(self.configuredSecondVC(), animated: true)
        }
        
        return vc
    }
    
    private func configuredSecondVC() -> SecondViewController {
        let vc = SecondViewController.createStoryboardInstance()
        vc.count = 10
        
        vc.onNext = {
            self.navigationController.pushViewController(self.configuredThirdVC(), animated: true)
        }
        
        return vc
    }
    
    private func configuredThirdVC() -> ThirdViewController {
        let vc = ThirdViewController.createStoryboardInstance()
        vc.text = "Hello!"
        
        vc.onNext = {
            self.navigationController.pushViewController(self.configuredFirstVC(), animated: true)
        }
        
        return vc
    }

}
