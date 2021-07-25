//
//  MainViewController.swift
//  KaznacheevAS_HW2.2
//
//  Created by Kaznacheev on 25.07.2021.
//

import UIKit

protocol ViewControllerDelegate {
    func setColor (color: UIColor)
}

class MainViewController: UIViewController {

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let colorVC = segue.destination as! ViewController
        colorVC.delegate = self
        colorVC.viewColor = view.backgroundColor
    }
}

extension MainViewController: ViewControllerDelegate {
    func setColor(color: UIColor) {
        view.backgroundColor = color
    }
}
