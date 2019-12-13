//
//  TableViewController.swift
//  animales
//
//  Created by Gilmer Marcano on 8/8/19.
//  Copyright © 2019 Gilmer Marcano. All rights reserved.
//

import UIKit
import WebKit

class TableViewController: UITableViewController {

    
var arreglo = ["perro","gato","loro","tigre","jirafa"]
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }


    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        
        return arreglo.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        // Configure the cell...
        
        cell.textLabel?.text = arreglo[indexPath.row]
        
        switch indexPath.row  {
            
        case 0: cell.imageView!.image = UIImage(named: "perro.jpeg")
            
        case 1: cell.imageView!.image = UIImage(named: "gato.jpg")
        
        case 2: cell.imageView!.image = UIImage(named: "loro.jpg")
        
        case 3: cell.imageView!.image = UIImage(named: "tigre.jpg")
        
        case 4: cell.imageView!.image = UIImage(named: "jirafa.jpg")
            
            
        default: cell.imageView!.image = UIImage(named: "ballena" )
        
        }
       
        return cell
        
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let idPdfSeleccionado = indexPath.row
        
        self.performSegue(withIdentifier: "pantallaDosSegue", sender: idPdfSeleccionado)
    }
    
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        return true
    }
    
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            arreglo.remove(at: indexPath.row)
            tableView.reloadData()
        }
    
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
      
        if segue.identifier == "pantallaDosSegue"{
            
            let idPdfSeleccionadoRecibido = sender as! Int
            
            let objPantalla2: ViewController2 = segue.destination as! ViewController2
            
            objPantalla2.nombrePdfRecibido = arreglo [idPdfSeleccionadoRecibido]
        }
        
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

