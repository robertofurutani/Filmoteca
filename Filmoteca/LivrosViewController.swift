//
//  LivrosViewController.swift
//  Filmoteca
//
//  Created by Usuário Convidado on 24/01/15.
//  Copyright (c) 2015 robertofurutani. All rights reserved.
//

import UIKit

class LivrosViewController: UIViewController ,DetalheLivroControllerDelegate {
    private var livrosArray = ["Futebol - Uma janela para o Brasil",
                               "A terra dos sonhos",
                               "Manga",
                               "Como se faz"]
  

    @IBOutlet weak var labelFavorito: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        
        var vc = segue.destinationViewController as DetalheLivroController
        vc.delegate = self
        if let i = sender?.tag {
            vc.nomeLivro = livrosArray[i]
            
        }
    }
    
    
    @IBAction
    func verDetalhes(sender : UIButton){
        performSegueWithIdentifier("livroDetSegue", sender: sender)
    }
    
    func livroFavoritado(livro: String) {
        labelFavorito.text = "Livro favorito:\(livro)"
    }

}
