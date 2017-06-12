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
    
    var onFinish: ((Void) -> Void)?
    
    init(navigationController: UINavigationController) {
        self.navigationController = navigationController
    }
    
    func start() {
        navigationController.setViewControllers([configuredFirstVC(with: .yellow)], animated: false)
    }
    
    private func configuredFirstVC(with color: UIColor) -> FirstViewController {
        let vm = FirstViewModel(color: color, title: "First")
        vm.onNext = {
            self.navigationController.pushViewController(self.configuredSecondVC(), animated: true)
        }
        
        let vc = FirstViewController.createStoryboardInstance()
        vc.viewModel = vm
        
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
        
        vc.onNext = { color in
            
            self.navigationController.pushViewController(self.configuredFirstVC(with: color), animated: true)
        }
        
        return vc
    }

}
