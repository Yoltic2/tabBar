//
//  ViewController.swift
//  tabBar
//
//  Created by Emilio Y Martinez on 14/12/20.
//

import UIKit

class ViewController: UIViewController {
    private let botton: UIButton = {
        let button = UIButton(frame: CGRect(x: 0, y: 0, width: 200, height: 100))
        button.setTitle("Iniciar", for : .normal)
        button.backgroundColor = .blue
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        view.backgroundColor = UIColor.red
        super.viewDidLoad()
        view.addSubview(botton)
        botton.addTarget(self, action: #selector(xd), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        botton.center=view.center
        
    }
    @objc func xd (){
//        let ale = UIAlertController(title: "Hola", message: "Estoy programando con swift view", preferredStyle: .alert)
//        ale.addAction(UIAlertAction(title: "OKEY", style: .cancel, handler:nil))
//        present(ale, animated: true, completion: nil)
        print("Hola")
        let tabBard = UITabBarController()
        let casai = casa()
        casai.title = "Home"
        let perfili = perfil()
        perfili.title="Perfil"
        let setti = settings()
        setti.title="Ajustes"
    
        
        tabBard.setViewControllers([casai,perfili,setti], animated: false)
        
        guard let items = tabBard.tabBar.items else{
        return
        }// un optional
        let images = ["house","housedos","gear"]
            for x in 0..<items.count{
                items[x].image=UIImage(named: images[x])

            }
        
        tabBard.modalPresentationStyle = .fullScreen// para aparecer una nueva completa no solo una parte
        present(tabBard, animated: true, completion: nil )
        
    }
}
        
    class casa :UIViewController {
        override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .orange
        }
    }
    
    class perfil :UIViewController {
        override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .red
        }
    }
    class settings :UIViewController {
        override func viewDidLoad() {
            super.viewDidLoad()
            view.backgroundColor = .blue
        }
    }



