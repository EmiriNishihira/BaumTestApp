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

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        self.navigationController?.setNavigationBarHidden(false, animated: true)
    }


    private func setStartButton() {
        startView.startButton.addTarget(self, action: #selector(tappedStartButton), for: .touchUpInside)
    }

    @objc func tappedStartButton() {
        let menuVC = MenuViewController.init(nibName: "MenuViewController", bundle: nil)
        self.navigationController?.pushViewController(menuVC, animated: true)
    }


}
