//
//  StartViewController.swift
//  BaumTestApp
//
//  Created by nakamori on 2022/07/24.
//

import UIKit

class StartViewController: UIViewController {

    @IBOutlet weak var startView: StartView!

    override func viewDidLoad() {
        super.viewDidLoad()
        setStartButton()
    }

    private func setStartButton() {
        startView.startButton.addTarget(self, action: #selector(tappedStartButton), for: .touchUpInside)
    }

    @objc func tappedStartButton() {
        let menuVC = MenuViewController()
        self.present(menuVC, animated: true, completion: nil)
    }


}
