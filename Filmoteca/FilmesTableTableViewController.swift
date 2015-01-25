//
//  FilmesTableTableViewController.swift
//  Filmoteca
//
//  Created by Usuário Convidado on 24/01/15.
//  Copyright (c) 2015 robertofurutani. All rights reserved.
//

import UIKit

class FilmesTableTableViewController: UITableViewController {

    
    private var filmesArr = ["2012", "Avatar", "Thor", "Underworld"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source



    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        var vc = segue.destinationViewController as DetalheFilmeViewController
        var btn = sender as UIButton
        
        if  let i = sender?.tag {
            println("tag \(i)")
            vc.filme = filmesArr[i]
            vc.imagem = btn.imageView?.image
        }
        
    }
    
    @IBAction func visualizarFilme(sender : UIButton){
        performSegueWithIdentifier("filmeDetalheSegue", sender: sender)
    }
    
    
    
    

}
