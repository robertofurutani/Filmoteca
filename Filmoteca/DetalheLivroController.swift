//
//  DetalheLivroController.swift
//  Filmoteca
//
//  Created by Usuário Convidado on 24/01/15.
//  Copyright (c) 2015 robertofurutani. All rights reserved.
//

import UIKit

protocol DetalheLivroControllerDelegate:class {
    
    func livroFavoritado(livro : String)
}

class DetalheLivroController: UIViewController {
    var nomeLivro = ""
  
    weak var delegate : DetalheLivroControllerDelegate?
    @IBOutlet weak var livroLabel: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        livroLabel.text = nomeLivro
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func fechar(sender: UIButton) {
        dismissViewControllerAnimated(true, completion: nil)
        
    }

    @IBAction func marcarFavorito(sender: UIButton) {
        delegate?.livroFavoritado(nomeLivro)
        
    }
}
